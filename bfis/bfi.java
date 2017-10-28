/**
 *  Interpreter for the BrainFuck programming language
 *
 *@author     David Moss, revised by Krzysztof Szewczyk.
 *@created    02 January 2002
 */

import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
public class BF {
    private char[] code;
    private byte[] memory = new byte[30000];
    private int pointer = 0;
    private int[] ins, outs;
    public BF(String codex){
        code = codex.toCharArray();
        if (test()) {
            execute();
        } else {
            System.out.println("Unbalanced BF code.");
			System.exit(0);
        }
    }
    public BF(File codex) {
        new BF(open(codex));
    }
    public static void main(String[] args) {
        if (args.length > 0) {
            try {
                new BF(new File(args[0]));
            } catch (Exception e) {
                e.printStackTrace();
                System.exit(1);
            }
        } else {
            System.out.println("Please enter filename.");
            System.exit(1);
        }
    }
    private int getEndLoop(int i) {
        for (int o = 0; o < ins.length; o++) {
            if (ins[o] == i) {
                return outs[o];
            }
        }
        return -1;
    }
    private int getStartLoop(int i) {
        for (int o = 0; o < outs.length; o++) {
            if (outs[o] == i) {
                return ins[o];
            }
        }
        return -1;
    }
    private String open(File f) {
        String s = "";
        try {
            String line = "";
            BufferedReader bin = new BufferedReader(new FileReader(f));
            while ((line = bin.readLine()) != null) {
                if (line.length() > 0) {
                    line = line.trim();
                }
                if (line.startsWith("{") && line.endsWith("}")) {
                    line = open(new File(line.substring(1, line.length() - 1)));
                }
                s += line;
            }
            bin.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return s;
    }
	//True if balanced brackets.
    boolean test() {
        int x = 0;
        int inb = 0;
        int outb = 0;
        for (int i = 0; i < code.length; i++) {
            switch (code[i]) {
                case '[':{
                    x++;
                    inb++;
                    break;
                }
                case ']':{
                    outb++;
                    break;
                }
            }
            if (outb > inb) {
                return false;
            }
        }
        if (inb != outb) {
            return false;
        }
        ins = new int[x];
        outs = new int[x];
        int inAt = 0;
        int outAt = 0;
        for (int i = 0; i < code.length; i++) {
            switch (code[i]) {
                case '[':{
                    ins[inAt++] = i;
                    outAt = inAt;
                    break;
                }
                case ']':{
                    for (int o = outAt; o >= 0; o--) {
                        if (outs[o - 1] == 0) {
                            outs[o - 1] = i;
                            break;
                        }
                    }
                    break;
                }
            }
        }
        return true;
    }

    void execute(){
        for(int i=0;i<code.length;i++){
            switch (code[i]){
                case '+':{
                    memory[pointer]++;
                    break;
                }
                case '-':{
                    memory[pointer]--;
                    break;
                }
                case '>':{
                    pointer++;
                    break;
                }
                case '<':{
                    pointer--;
                    break;
                }
                case '[':{
                    if (memory[pointer] == 0) {
                        i = getEndLoop(i);

                        if (i == -1) {
                            System.out.println("Mismatched Brackets");
							System.exit(0);
                        }
                    }

                    break;
                }
                case ']':{
                    i = getStartLoop(i) - 1;

                    if (i == -1) {
                        System.out.println("Mismatched Brackets");
						System.exit(0);
                    }

                    break;
                }
                case '.':{
                    System.out.print((char) memory[pointer]);
                    break;
                }
                case ',':{
                    try {
                        memory[pointer] = (byte) System.in.read();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    break;
                }
            }
        }
    }
}
