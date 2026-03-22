package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class ar extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ as f19863a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ar(as asVar, Handler handler) {
        super(handler);
        this.f19863a = asVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, Bundle bundle) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                this.f19863a.f19864a.trySetResult(1);
                return;
            }
            this.f19863a.f19864a.trySetResult(2);
            return;
        }
        this.f19863a.f19864a.trySetResult(3);
    }
}
