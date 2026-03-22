package com.amazonaws.logging;

import com.amazonaws.logging.LogFactory;
/* loaded from: classes2.dex */
public class AndroidLog implements Log {

    /* renamed from: a  reason: collision with root package name */
    private final String f5052a;

    /* renamed from: b  reason: collision with root package name */
    private LogFactory.Level f5053b = null;

    public AndroidLog(String str) {
        this.f5052a = str;
    }

    private LogFactory.Level l() {
        LogFactory.Level level = this.f5053b;
        if (level != null) {
            return level;
        }
        return LogFactory.a();
    }

    @Override // com.amazonaws.logging.Log
    public boolean a() {
        if (android.util.Log.isLoggable(this.f5052a, 4) && (l() == null || l().getValue() <= LogFactory.Level.INFO.getValue())) {
            return true;
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    public void b(Object obj, Throwable th2) {
        if (l() == null || l().getValue() <= LogFactory.Level.ERROR.getValue()) {
            android.util.Log.e(this.f5052a, obj.toString(), th2);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void c(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.ERROR.getValue()) {
            android.util.Log.e(this.f5052a, obj.toString());
        }
    }

    @Override // com.amazonaws.logging.Log
    public void d(Object obj, Throwable th2) {
        if (l() == null || l().getValue() <= LogFactory.Level.DEBUG.getValue()) {
            android.util.Log.d(this.f5052a, obj.toString(), th2);
        }
    }

    @Override // com.amazonaws.logging.Log
    public boolean e() {
        if (android.util.Log.isLoggable(this.f5052a, 6) && (l() == null || l().getValue() <= LogFactory.Level.ERROR.getValue())) {
            return true;
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    public void f(Object obj, Throwable th2) {
        if (l() == null || l().getValue() <= LogFactory.Level.WARN.getValue()) {
            android.util.Log.w(this.f5052a, obj.toString(), th2);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void g(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.WARN.getValue()) {
            android.util.Log.w(this.f5052a, obj.toString());
        }
    }

    @Override // com.amazonaws.logging.Log
    public void h(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.DEBUG.getValue()) {
            android.util.Log.d(this.f5052a, obj.toString());
        }
    }

    @Override // com.amazonaws.logging.Log
    public boolean i() {
        if (android.util.Log.isLoggable(this.f5052a, 3) && (l() == null || l().getValue() <= LogFactory.Level.DEBUG.getValue())) {
            return true;
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    public void j(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.INFO.getValue()) {
            android.util.Log.i(this.f5052a, obj.toString());
        }
    }

    @Override // com.amazonaws.logging.Log
    public void k(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.TRACE.getValue()) {
            android.util.Log.v(this.f5052a, obj.toString());
        }
    }
}
