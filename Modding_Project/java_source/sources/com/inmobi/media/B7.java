package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class B7 extends BroadcastReceiver implements InterfaceC3143r7 {

    /* renamed from: a  reason: collision with root package name */
    public final String f23512a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ F7 f23513b;

    public B7(F7 f72, String jsCallbackNamespace) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        this.f23513b = f72;
        this.f23512a = jsCallbackNamespace;
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
        B2.a(d10, this, new IntentFilter("android.intent.action.HEADSET_PLUG"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual("android.intent.action.HEADSET_PLUG", intent.getAction())) {
            boolean z10 = false;
            int intExtra = intent.getIntExtra("state", 0);
            InterfaceC3269z5 interfaceC3269z5 = this.f23513b.f23646b;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("MraidMediaProcessor", "Headphone plugged state changed: " + intExtra);
            }
            F7 f72 = this.f23513b;
            String str = this.f23512a;
            if (1 == intExtra) {
                z10 = true;
            }
            InterfaceC3269z5 interfaceC3269z52 = f72.f23646b;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).c("MraidMediaProcessor", "fireHeadphonePluggedEvent");
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = f72.f23645a;
            if (gestureDetector$OnGestureListenerC2941ec != null) {
                gestureDetector$OnGestureListenerC2941ec.a(str, "fireHeadphonePluggedEvent(" + z10 + ");");
            }
        }
    }
}
