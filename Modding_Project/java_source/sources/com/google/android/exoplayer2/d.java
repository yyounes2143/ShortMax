package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AudioFocusManager.java */
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final AudioManager f17446a;

    /* renamed from: b  reason: collision with root package name */
    private final a f17447b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private b f17448c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.a f17449d;

    /* renamed from: f  reason: collision with root package name */
    private int f17451f;

    /* renamed from: h  reason: collision with root package name */
    private AudioFocusRequest f17453h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f17454i;

    /* renamed from: g  reason: collision with root package name */
    private float f17452g = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private int f17450e = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioFocusManager.java */
    /* loaded from: classes4.dex */
    public class a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f17455a;

        public a(Handler handler) {
            this.f17455a = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i10) {
            d.this.h(i10);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i10) {
            this.f17455a.post(new Runnable() { // from class: com.google.android.exoplayer2.c
                @Override // java.lang.Runnable
                public final void run() {
                    d.a.this.b(i10);
                }
            });
        }
    }

    /* compiled from: AudioFocusManager.java */
    /* loaded from: classes4.dex */
    public interface b {
        void s(float f10);

        void v(int i10);
    }

    public d(Context context, Handler handler, b bVar) {
        this.f17446a = (AudioManager) b7.a.e((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.f17448c = bVar;
        this.f17447b = new a(handler);
    }

    private void a() {
        this.f17446a.abandonAudioFocus(this.f17447b);
    }

    private void b() {
        if (this.f17450e == 0) {
            return;
        }
        if (b7.s0.f2506a >= 26) {
            c();
        } else {
            a();
        }
        n(0);
    }

    @RequiresApi(26)
    private void c() {
        AudioFocusRequest audioFocusRequest = this.f17453h;
        if (audioFocusRequest != null) {
            this.f17446a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int e(@Nullable com.google.android.exoplayer2.audio.a aVar) {
        if (aVar == null) {
            return 0;
        }
        switch (aVar.f17296c) {
            case 0:
                b7.q.i("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                break;
            case 11:
                if (aVar.f17294a == 1) {
                    return 2;
                }
                break;
            case 15:
            default:
                b7.q.i("AudioFocusManager", "Unidentified audio usage: " + aVar.f17296c);
                return 0;
            case 16:
                if (b7.s0.f2506a < 19) {
                    return 2;
                }
                return 4;
        }
        return 3;
    }

    private void f(int i10) {
        b bVar = this.f17448c;
        if (bVar != null) {
            bVar.v(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i10) {
        if (i10 != -3 && i10 != -2) {
            if (i10 != -1) {
                if (i10 != 1) {
                    b7.q.i("AudioFocusManager", "Unknown focus change type: " + i10);
                    return;
                }
                n(1);
                f(1);
                return;
            }
            f(-1);
            b();
        } else if (i10 != -2 && !q()) {
            n(3);
        } else {
            f(0);
            n(2);
        }
    }

    private int j() {
        int k10;
        if (this.f17450e == 1) {
            return 1;
        }
        if (b7.s0.f2506a >= 26) {
            k10 = l();
        } else {
            k10 = k();
        }
        if (k10 == 1) {
            n(1);
            return 1;
        }
        n(0);
        return -1;
    }

    private int k() {
        return this.f17446a.requestAudioFocus(this.f17447b, b7.s0.a0(((com.google.android.exoplayer2.audio.a) b7.a.e(this.f17449d)).f17296c), this.f17451f);
    }

    @RequiresApi(26)
    private int l() {
        AudioFocusRequest.Builder a10;
        AudioFocusRequest.Builder audioAttributes;
        AudioFocusRequest.Builder willPauseWhenDucked;
        AudioFocusRequest.Builder onAudioFocusChangeListener;
        AudioFocusRequest build;
        int requestAudioFocus;
        AudioFocusRequest audioFocusRequest = this.f17453h;
        if (audioFocusRequest == null || this.f17454i) {
            if (audioFocusRequest == null) {
                o5.c.a();
                a10 = o5.a.a(this.f17451f);
            } else {
                o5.c.a();
                a10 = o5.b.a(this.f17453h);
            }
            boolean q10 = q();
            audioAttributes = a10.setAudioAttributes(((com.google.android.exoplayer2.audio.a) b7.a.e(this.f17449d)).b().f17300a);
            willPauseWhenDucked = audioAttributes.setWillPauseWhenDucked(q10);
            onAudioFocusChangeListener = willPauseWhenDucked.setOnAudioFocusChangeListener(this.f17447b);
            build = onAudioFocusChangeListener.build();
            this.f17453h = build;
            this.f17454i = false;
        }
        requestAudioFocus = this.f17446a.requestAudioFocus(this.f17453h);
        return requestAudioFocus;
    }

    private void n(int i10) {
        float f10;
        if (this.f17450e == i10) {
            return;
        }
        this.f17450e = i10;
        if (i10 == 3) {
            f10 = 0.2f;
        } else {
            f10 = 1.0f;
        }
        if (this.f17452g == f10) {
            return;
        }
        this.f17452g = f10;
        b bVar = this.f17448c;
        if (bVar != null) {
            bVar.s(f10);
        }
    }

    private boolean o(int i10) {
        if (i10 == 1 || this.f17451f != 1) {
            return true;
        }
        return false;
    }

    private boolean q() {
        com.google.android.exoplayer2.audio.a aVar = this.f17449d;
        if (aVar != null && aVar.f17294a == 1) {
            return true;
        }
        return false;
    }

    public float g() {
        return this.f17452g;
    }

    public void i() {
        this.f17448c = null;
        b();
    }

    public void m(@Nullable com.google.android.exoplayer2.audio.a aVar) {
        if (!b7.s0.c(this.f17449d, aVar)) {
            this.f17449d = aVar;
            int e10 = e(aVar);
            this.f17451f = e10;
            boolean z10 = true;
            if (e10 != 1 && e10 != 0) {
                z10 = false;
            }
            b7.a.b(z10, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
        }
    }

    public int p(boolean z10, int i10) {
        if (o(i10)) {
            b();
            if (!z10) {
                return -1;
            }
            return 1;
        } else if (!z10) {
            return -1;
        } else {
            return j();
        }
    }
}
