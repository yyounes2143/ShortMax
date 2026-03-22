package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* compiled from: SameBase64Tool.java */
/* loaded from: classes5.dex */
public class j0 {

    /* renamed from: a  reason: collision with root package name */
    private static Map<Character, Character> f27443a;

    /* renamed from: b  reason: collision with root package name */
    private static Map<Character, Character> f27444b;

    /* renamed from: c  reason: collision with root package name */
    private static byte[] f27445c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    /* renamed from: d  reason: collision with root package name */
    private static char[] f27446d = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    static {
        HashMap hashMap = new HashMap();
        f27443a = hashMap;
        hashMap.put('v', 'A');
        f27443a.put('S', 'B');
        f27443a.put('o', 'C');
        f27443a.put('a', 'D');
        f27443a.put('j', 'E');
        f27443a.put('c', 'F');
        f27443a.put('7', 'G');
        f27443a.put('d', 'H');
        f27443a.put('R', 'I');
        f27443a.put('z', 'J');
        f27443a.put('p', 'K');
        f27443a.put('W', 'L');
        f27443a.put('i', 'M');
        f27443a.put('f', 'N');
        f27443a.put('G', 'O');
        f27443a.put('y', 'P');
        f27443a.put('N', 'Q');
        f27443a.put('x', 'R');
        f27443a.put('Z', 'S');
        f27443a.put('n', 'T');
        f27443a.put('V', 'U');
        f27443a.put('5', 'V');
        f27443a.put('k', 'W');
        f27443a.put('+', 'X');
        f27443a.put('D', 'Y');
        f27443a.put('H', 'Z');
        f27443a.put('L', 'a');
        f27443a.put('Y', 'b');
        f27443a.put('h', 'c');
        f27443a.put('J', 'd');
        f27443a.put('4', 'e');
        f27443a.put('6', 'f');
        f27443a.put('l', 'g');
        f27443a.put('t', 'h');
        f27443a.put('0', 'i');
        f27443a.put('U', 'j');
        f27443a.put('3', 'k');
        f27443a.put('Q', 'l');
        f27443a.put('r', 'm');
        f27443a.put('g', 'n');
        f27443a.put('E', 'o');
        f27443a.put('u', 'p');
        f27443a.put('q', 'q');
        f27443a.put('8', 'r');
        f27443a.put('s', 's');
        f27443a.put('w', 't');
        f27443a.put('/', 'u');
        f27443a.put('X', 'v');
        f27443a.put('M', 'w');
        f27443a.put('e', 'x');
        f27443a.put('B', 'y');
        f27443a.put('A', 'z');
        f27443a.put('T', '0');
        f27443a.put('2', '1');
        f27443a.put('F', '2');
        f27443a.put('b', '3');
        f27443a.put('9', '4');
        f27443a.put('P', '5');
        f27443a.put('1', '6');
        f27443a.put('O', '7');
        f27443a.put('I', '8');
        f27443a.put('K', '9');
        f27443a.put('m', '+');
        f27443a.put('C', '/');
        HashMap hashMap2 = new HashMap();
        f27444b = hashMap2;
        hashMap2.put('A', 'v');
        f27444b.put('B', 'S');
        f27444b.put('C', 'o');
        f27444b.put('D', 'a');
        f27444b.put('E', 'j');
        f27444b.put('F', 'c');
        f27444b.put('G', '7');
        f27444b.put('H', 'd');
        f27444b.put('I', 'R');
        f27444b.put('J', 'z');
        f27444b.put('K', 'p');
        f27444b.put('L', 'W');
        f27444b.put('M', 'i');
        f27444b.put('N', 'f');
        f27444b.put('O', 'G');
        f27444b.put('P', 'y');
        f27444b.put('Q', 'N');
        f27444b.put('R', 'x');
        f27444b.put('S', 'Z');
        f27444b.put('T', 'n');
        f27444b.put('U', 'V');
        f27444b.put('V', '5');
        f27444b.put('W', 'k');
        f27444b.put('X', '+');
        f27444b.put('Y', 'D');
        f27444b.put('Z', 'H');
        f27444b.put('a', 'L');
        f27444b.put('b', 'Y');
        f27444b.put('c', 'h');
        f27444b.put('d', 'J');
        f27444b.put('e', '4');
        f27444b.put('f', '6');
        f27444b.put('g', 'l');
        f27444b.put('h', 't');
        f27444b.put('i', '0');
        f27444b.put('j', 'U');
        f27444b.put('k', '3');
        f27444b.put('l', 'Q');
        f27444b.put('m', 'r');
        f27444b.put('n', 'g');
        f27444b.put('o', 'E');
        f27444b.put('p', 'u');
        f27444b.put('q', 'q');
        f27444b.put('r', '8');
        f27444b.put('s', 's');
        f27444b.put('t', 'w');
        f27444b.put('u', '/');
        f27444b.put('v', 'X');
        f27444b.put('w', 'M');
        f27444b.put('x', 'e');
        f27444b.put('y', 'B');
        f27444b.put('z', 'A');
        f27444b.put('0', 'T');
        f27444b.put('1', '2');
        f27444b.put('2', 'F');
        f27444b.put('3', 'b');
        f27444b.put('4', '9');
        f27444b.put('5', 'P');
        f27444b.put('6', '1');
        f27444b.put('7', 'O');
        f27444b.put('8', 'I');
        f27444b.put('9', 'K');
        f27444b.put('+', 'm');
        f27444b.put('/', 'C');
    }

    public static String a(String str) {
        return q0.b(str);
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return q0.c(str);
    }
}
