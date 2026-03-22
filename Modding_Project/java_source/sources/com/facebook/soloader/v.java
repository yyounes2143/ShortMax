package com.facebook.soloader;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: SoLoaderULErrorFactory.java */
/* loaded from: classes2.dex */
public class v {
    private static boolean a(String str) {
        Matcher matcher = Pattern.compile("\\P{ASCII}+").matcher(str);
        if (matcher.find()) {
            String group = matcher.group();
            o.g("SoLoader", "Library name is corrupted, contains non-ASCII characters " + group);
            return true;
        }
        return false;
    }

    public static SoLoaderULError b(String str, UnsatisfiedLinkError unsatisfiedLinkError) {
        SoLoaderULError soLoaderULError;
        if (unsatisfiedLinkError.getMessage() != null && unsatisfiedLinkError.getMessage().contains("ELF")) {
            o.a("SoLoader", "Corrupted lib file detected");
            soLoaderULError = new SoLoaderCorruptedLibFileError(str, unsatisfiedLinkError.toString());
        } else if (a(str)) {
            o.a("SoLoader", "Corrupted lib name detected");
            soLoaderULError = new SoLoaderCorruptedLibNameError(str, "corrupted lib name: " + unsatisfiedLinkError.toString());
        } else {
            soLoaderULError = new SoLoaderULError(str, unsatisfiedLinkError.toString());
        }
        soLoaderULError.initCause(unsatisfiedLinkError);
        return soLoaderULError;
    }
}
