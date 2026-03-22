package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class e implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f19991a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ e(f fVar, d dVar) {
        this.f19991a = fVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        o0 o0Var;
        o0Var = this.f19991a.f19994b;
        o0Var.d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f19991a.c().post(new b(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        o0 o0Var;
        o0Var = this.f19991a.f19994b;
        o0Var.d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f19991a.c().post(new c(this));
    }
}
