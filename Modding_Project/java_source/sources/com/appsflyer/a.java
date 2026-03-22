package com.appsflyer;

import kotlin.jvm.functions.Function1;
/* compiled from: R8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Function1 f10913a;

    public /* synthetic */ a(Function1 function1) {
        this.f10913a = function1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AFLogger.a(this.f10913a);
    }
}
