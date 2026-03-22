package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class C7 extends BroadcastReceiver implements InterfaceC3143r7 {

    /* renamed from: a  reason: collision with root package name */
    public final String f23531a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ F7 f23532b;

    public C7(F7 f72, String jsCallbackNamespace) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        this.f23532b = f72;
        this.f23531a = jsCallbackNamespace;
    }

    @Override // com.inmobi.media.InterfaceC3143r7
    public final void a() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        d10.unregisterReceiver(this);
    }

    @Override // com.inmobi.media.InterfaceC3143r7
    public final void b() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        B2.a(d10, this, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean z10;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual("android.media.RINGER_MODE_CHANGED", intent.getAction())) {
            int intExtra = intent.getIntExtra("android.media.EXTRA_RINGER_MODE", 2);
            InterfaceC3269z5 interfaceC3269z5 = this.f23532b.f23646b;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("MraidMediaProcessor", "Ringer mode action changed: " + intExtra);
            }
            F7 f72 = this.f23532b;
            String str = this.f23531a;
            if (2 != intExtra) {
                z10 = true;
            } else {
                z10 = false;
            }
            InterfaceC3269z5 interfaceC3269z52 = f72.f23646b;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).c("MraidMediaProcessor", "fireDeviceMuteChangeEvent");
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = f72.f23645a;
            if (gestureDetector$OnGestureListenerC2941ec != null) {
                gestureDetector$OnGestureListenerC2941ec.a(str, "fireDeviceMuteChangeEvent(" + z10 + ");");
            }
        }
    }
}
