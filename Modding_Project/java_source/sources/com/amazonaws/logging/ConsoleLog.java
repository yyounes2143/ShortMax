package com.amazonaws.logging;

import com.amazonaws.logging.LogFactory;
import java.io.PrintStream;
/* loaded from: classes2.dex */
public final class ConsoleLog implements Log {

    /* renamed from: a  reason: collision with root package name */
    private final String f5054a;

    /* renamed from: b  reason: collision with root package name */
    private LogFactory.Level f5055b = null;

    public ConsoleLog(String str) {
        this.f5054a = str;
    }

    private LogFactory.Level l() {
        LogFactory.Level level = this.f5055b;
        if (level != null) {
            return level;
        }
        return LogFactory.a();
    }

    private void o(LogFactory.Level level, Object obj, Throwable th2) {
        PrintStream printStream = System.out;
        printStream.printf("%s/%s: %s\n", this.f5054a, level.name(), obj);
        if (th2 != null) {
            printStream.println(th2.toString());
        }
    }

    @Override // com.amazonaws.logging.Log
    public boolean a() {
        if (l() != null && l().getValue() > LogFactory.Level.INFO.getValue()) {
            return false;
        }
        return true;
    }

    @Override // com.amazonaws.logging.Log
    public void b(Object obj, Throwable th2) {
        if (e()) {
            o(LogFactory.Level.ERROR, obj, th2);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void c(Object obj) {
        if (e()) {
            o(LogFactory.Level.ERROR, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void d(Object obj, Throwable th2) {
        if (i()) {
            o(LogFactory.Level.DEBUG, obj, th2);
        }
    }

    @Override // com.amazonaws.logging.Log
    public boolean e() {
        if (l() != null && l().getValue() > LogFactory.Level.ERROR.getValue()) {
            return false;
        }
        return true;
    }

    @Override // com.amazonaws.logging.Log
    public void f(Object obj, Throwable th2) {
        if (n()) {
            o(LogFactory.Level.WARN, obj, th2);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void g(Object obj) {
        if (n()) {
            o(LogFactory.Level.WARN, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void h(Object obj) {
        if (i()) {
            o(LogFactory.Level.DEBUG, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public boolean i() {
        if (l() != null && l().getValue() > LogFactory.Level.DEBUG.getValue()) {
            return false;
        }
        return true;
    }

    @Override // com.amazonaws.logging.Log
    public void j(Object obj) {
        if (a()) {
            o(LogFactory.Level.INFO, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void k(Object obj) {
        if (m()) {
            o(LogFactory.Level.TRACE, obj, null);
        }
    }

    public boolean m() {
        if (l() != null && l().getValue() > LogFactory.Level.TRACE.getValue()) {
            return false;
        }
        return true;
    }

    public boolean n() {
        if (l() != null && l().getValue() > LogFactory.Level.WARN.getValue()) {
            return false;
        }
        return true;
    }
}
