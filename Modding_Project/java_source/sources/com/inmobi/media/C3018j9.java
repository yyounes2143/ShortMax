package com.inmobi.media;

import android.media.MediaPlayer;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.j9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3018j9 implements MediaPlayer.OnPreparedListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3050l9 f24899a;

    public C3018j9(C3050l9 c3050l9) {
        this.f24899a = c3050l9;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mp2) {
        C2904c9 c2904c9;
        Object obj;
        Boolean bool;
        Object obj2;
        HashMap hashMap;
        C2938e9 c2938e9;
        Object obj3;
        HashMap hashMap2;
        HashMap hashMap3;
        Intrinsics.checkNotNullParameter(mp2, "mp");
        if (this.f24899a.getMediaPlayer() == null) {
            return;
        }
        G8 mediaPlayer = this.f24899a.getMediaPlayer();
        if (mediaPlayer != null) {
            mediaPlayer.f23682a = 2;
        }
        C3050l9 c3050l9 = this.f24899a;
        c3050l9.f24979r = true;
        c3050l9.f24978q = true;
        c3050l9.f24977p = true;
        C2938e9 c2938e92 = c3050l9.f24975n;
        if (c2938e92 != null) {
            c2938e92.setEnabled(true);
        }
        this.f24899a.f24966e = mp2.getVideoWidth();
        this.f24899a.f24967f = mp2.getVideoHeight();
        Object tag = this.f24899a.getTag();
        Boolean bool2 = null;
        if (tag instanceof C2904c9) {
            c2904c9 = (C2904c9) tag;
        } else {
            c2904c9 = null;
        }
        int i10 = 0;
        if (c2904c9 != null) {
            Object obj4 = c2904c9.f24597t.get("didCompleteQ4");
            Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj4).booleanValue()) {
                this.f24899a.a(8, 0);
                Object obj5 = c2904c9.f24597t.get("placementType");
                Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.Byte");
                if (((Byte) obj5).byteValue() == 1) {
                    return;
                }
            }
        }
        InterfaceC2970g9 playbackEventListener = this.f24899a.getPlaybackEventListener();
        if (playbackEventListener != null) {
            ((A8) playbackEventListener).a((byte) 0);
        }
        if (c2904c9 != null && (hashMap3 = c2904c9.f24597t) != null) {
            obj = hashMap3.get("didCompleteQ4");
        } else {
            obj = null;
        }
        if (obj instanceof Boolean) {
            bool = (Boolean) obj;
        } else {
            bool = null;
        }
        if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
            Object obj6 = c2904c9.f24597t.get("seekPosition");
            Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type kotlin.Int");
            i10 = ((Integer) obj6).intValue();
        }
        C3050l9 c3050l92 = this.f24899a;
        if (c3050l92.f24966e != 0 && c3050l92.f24967f != 0) {
            G8 mediaPlayer2 = c3050l92.getMediaPlayer();
            if (mediaPlayer2 != null && 3 == mediaPlayer2.f23683b) {
                if (c2904c9 != null && (hashMap2 = c2904c9.f24597t) != null) {
                    obj3 = hashMap2.get("isFullScreen");
                } else {
                    obj3 = null;
                }
                if (obj3 instanceof Boolean) {
                    bool2 = (Boolean) obj3;
                }
                if (Intrinsics.areEqual(bool2, Boolean.TRUE)) {
                    this.f24899a.start();
                }
                C2938e9 c2938e93 = this.f24899a.f24975n;
                if (c2938e93 != null) {
                    c2938e93.d();
                    return;
                }
                return;
            } else if (!this.f24899a.isPlaying()) {
                if ((i10 != 0 || this.f24899a.getCurrentPosition() > 0) && (c2938e9 = this.f24899a.f24975n) != null) {
                    c2938e9.d();
                    return;
                }
                return;
            } else {
                return;
            }
        }
        G8 mediaPlayer3 = c3050l92.getMediaPlayer();
        if (mediaPlayer3 != null && 3 == mediaPlayer3.f23683b) {
            if (c2904c9 != null && (hashMap = c2904c9.f24597t) != null) {
                obj2 = hashMap.get("isFullScreen");
            } else {
                obj2 = null;
            }
            if (obj2 instanceof Boolean) {
                bool2 = (Boolean) obj2;
            }
            if (Intrinsics.areEqual(bool2, Boolean.TRUE)) {
                this.f24899a.start();
            }
        }
    }
}
