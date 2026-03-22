package com.tencent.wcdb.support;

import android.util.Printer;
/* loaded from: classes7.dex */
public class PrefixPrinter implements Printer {
    private final String mPrefix;
    private final Printer mPrinter;

    private PrefixPrinter(Printer printer, String str) {
        this.mPrinter = printer;
        this.mPrefix = str;
    }

    public static Printer create(Printer printer, String str) {
        if (str != null && !str.equals("")) {
            return new PrefixPrinter(printer, str);
        }
        return printer;
    }

    @Override // android.util.Printer
    public void println(String str) {
        Printer printer = this.mPrinter;
        printer.println(this.mPrefix + str);
    }
}
