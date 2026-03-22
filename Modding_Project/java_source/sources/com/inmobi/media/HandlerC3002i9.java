package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.i9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class HandlerC3002i9 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f24858a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3002i9(C3050l9 videoView) {
        super(Looper.getMainLooper());
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        this.f24858a = new WeakReference(videoView);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        C2904c9 c2904c9;
        InterfaceC2970g9 playbackEventListener;
        Intrinsics.checkNotNullParameter(msg, "msg");
        C3050l9 c3050l9 = (C3050l9) this.f24858a.get();
        if (c3050l9 != null && msg.what == 1) {
            int duration = c3050l9.getDuration();
            int currentPosition = c3050l9.getCurrentPosition();
            if (duration != -1 && currentPosition != 0) {
                Object tag = c3050l9.getTag();
                if (tag instanceof C2904c9) {
                    c2904c9 = (C2904c9) tag;
                } else {
                    c2904c9 = null;
                }
                if (c2904c9 != null) {
                    Object obj = c2904c9.f24597t.get("didCompleteQ1");
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
                    if (!((Boolean) obj).booleanValue() && (currentPosition * 4) - duration >= 0) {
                        c2904c9.f24597t.put("didCompleteQ1", Boolean.TRUE);
                        InterfaceC2986h9 quartileCompletedListener = c3050l9.getQuartileCompletedListener();
                        Intrinsics.checkNotNull(quartileCompletedListener);
                        ((C3272z8) quartileCompletedListener).a((byte) 0);
                    }
                    Object obj2 = c2904c9.f24597t.get("didCompleteQ2");
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
                    if (!((Boolean) obj2).booleanValue() && (currentPosition * 2) - duration >= 0) {
                        c2904c9.f24597t.put("didCompleteQ2", Boolean.TRUE);
                        InterfaceC2986h9 quartileCompletedListener2 = c3050l9.getQuartileCompletedListener();
                        if (quartileCompletedListener2 != null) {
                            ((C3272z8) quartileCompletedListener2).a((byte) 1);
                        }
                    }
                    Object obj3 = c2904c9.f24597t.get("didCompleteQ3");
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Boolean");
                    if (!((Boolean) obj3).booleanValue() && (currentPosition * 4) - (duration * 3) >= 0) {
                        c2904c9.f24597t.put("didCompleteQ3", Boolean.TRUE);
                        InterfaceC2986h9 quartileCompletedListener3 = c3050l9.getQuartileCompletedListener();
                        if (quartileCompletedListener3 != null) {
                            ((C3272z8) quartileCompletedListener3).a((byte) 2);
                        }
                    }
                    if ((currentPosition / duration) * 100 > c2904c9.D) {
                        Object obj4 = c2904c9.f24597t.get("didQ4Fire");
                        Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Boolean");
                        if (!((Boolean) obj4).booleanValue() && (playbackEventListener = c3050l9.getPlaybackEventListener()) != null) {
                            ((A8) playbackEventListener).a((byte) 5);
                        }
                    }
                }
            }
            sendEmptyMessageDelayed(1, 1000L);
        }
        super.handleMessage(msg);
    }
}
