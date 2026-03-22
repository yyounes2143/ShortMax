package org.slf4j.helpers;
/* loaded from: classes8.dex */
public class NOPLogger extends MarkerIgnoringBase {

    /* renamed from: b  reason: collision with root package name */
    public static final NOPLogger f64372b = new NOPLogger();

    protected NOPLogger() {
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase, du.a
    public String getName() {
        return "NOP";
    }

    @Override // du.a
    public final void b(String str) {
    }

    @Override // du.a
    public final void d(String str) {
    }
}
