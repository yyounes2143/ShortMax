package com.inmobi.media;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.inmobi.media.D7;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class D7 extends ContentObserver implements InterfaceC3143r7 {

    /* renamed from: a  reason: collision with root package name */
    public final String f23566a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f23567b;

    /* renamed from: c  reason: collision with root package name */
    public int f23568c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ F7 f23569d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D7(F7 f72, String mJsCallbackNamespace, Context context, Handler handler) {
        super(handler);
        Intrinsics.checkNotNullParameter(mJsCallbackNamespace, "mJsCallbackNamespace");
        this.f23569d = f72;
        this.f23566a = mJsCallbackNamespace;
        this.f23567b = context;
        this.f23568c = -1;
    }

    public static final void a(D7 this$0, F7 this$1, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        Context context = this$0.f23567b;
        if (context != null) {
            Object systemService = context.getSystemService("audio");
            AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
            if (audioManager != null) {
                try {
                    int streamVolume = audioManager.getStreamVolume(3);
                    if (streamVolume != this$0.f23568c) {
                        this$0.f23568c = streamVolume;
                        InterfaceC3269z5 interfaceC3269z5 = this$1.f23646b;
                        if (interfaceC3269z5 != null) {
                            ((A5) interfaceC3269z5).a("MraidMediaProcessor", "volume change detected - " + z10);
                        }
                        String str = this$0.f23566a;
                        InterfaceC3269z5 interfaceC3269z52 = this$1.f23646b;
                        if (interfaceC3269z52 != null) {
                            ((A5) interfaceC3269z52).c("MraidMediaProcessor", "fireDeviceVolumeChangeEvent");
                        }
                        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this$1.f23645a;
                        if (gestureDetector$OnGestureListenerC2941ec != null) {
                            gestureDetector$OnGestureListenerC2941ec.a(str, "fireDeviceVolumeChangeEvent(" + streamVolume + ");");
                        }
                    }
                } catch (Exception e10) {
                    InterfaceC3269z5 interfaceC3269z53 = this$1.f23646b;
                    if (interfaceC3269z53 != null) {
                        ((A5) interfaceC3269z53).a("MraidMediaProcessor", "Unexpected error in volume listener", e10);
                    }
                }
            }
        }
    }

    @Override // com.inmobi.media.InterfaceC3143r7
    public final void b() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        d10.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(final boolean z10) {
        super.onChange(z10);
        final F7 f72 = this.f23569d;
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).execute(new Runnable() { // from class: ub.o
            @Override // java.lang.Runnable
            public final void run() {
                D7.a(D7.this, f72, z10);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC3143r7
    public final void a() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        d10.getContentResolver().unregisterContentObserver(this);
    }
}
