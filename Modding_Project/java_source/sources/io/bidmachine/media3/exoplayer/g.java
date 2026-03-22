package io.bidmachine.media3.exoplayer;

import an.a;
import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.common.base.Suppliers;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AudioFocusManager.java */
/* loaded from: classes8.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final h7.n<AudioManager> f55928a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f55929b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f55930c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private zm.c f55931d;

    /* renamed from: f  reason: collision with root package name */
    private int f55933f;

    /* renamed from: h  reason: collision with root package name */
    private an.a f55935h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f55936i;

    /* renamed from: g  reason: collision with root package name */
    private float f55934g = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private int f55932e = 0;

    /* compiled from: AudioFocusManager.java */
    /* loaded from: classes8.dex */
    public interface a {
        void s(float f10);

        void v(int i10);
    }

    public g(final Context context, Looper looper, a aVar) {
        this.f55928a = Suppliers.a(new h7.n() { // from class: io.bidmachine.media3.exoplayer.f
            @Override // h7.n
            public final Object get() {
                AudioManager c10;
                c10 = an.d.c(context);
                return c10;
            }
        });
        this.f55930c = aVar;
        this.f55929b = new Handler(looper);
    }

    private void c() {
        int i10 = this.f55932e;
        if (i10 != 1 && i10 != 0 && this.f55935h != null) {
            an.d.b(this.f55928a.get(), this.f55935h);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int d(@Nullable zm.c cVar) {
        if (cVar == null) {
            return 0;
        }
        switch (cVar.f71822c) {
            case 0:
                cn.r.h("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
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
                if (cVar.f71820a == 1) {
                    return 2;
                }
                break;
            case 15:
            default:
                cn.r.h("AudioFocusManager", "Unidentified audio usage: " + cVar.f71822c);
                return 0;
            case 16:
                return 4;
        }
        return 3;
    }

    private void e(int i10) {
        a aVar = this.f55930c;
        if (aVar != null) {
            aVar.v(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i10) {
        if (i10 != -3 && i10 != -2) {
            if (i10 != -1) {
                if (i10 != 1) {
                    cn.r.h("AudioFocusManager", "Unknown focus change type: " + i10);
                    return;
                }
                m(2);
                e(1);
                return;
            }
            e(-1);
            c();
            m(1);
        } else if (i10 != -2 && !p()) {
            m(4);
        } else {
            e(0);
            m(3);
        }
    }

    private int j() {
        if (this.f55932e == 2) {
            return 1;
        }
        if (k() == 1) {
            m(2);
            return 1;
        }
        m(1);
        return -1;
    }

    private int k() {
        a.b a10;
        an.a aVar = this.f55935h;
        if (aVar == null || this.f55936i) {
            if (aVar == null) {
                a10 = new a.b(this.f55933f);
            } else {
                a10 = aVar.a();
            }
            this.f55935h = a10.b((zm.c) cn.a.e(this.f55931d)).d(p()).c(new AudioManager.OnAudioFocusChangeListener() { // from class: io.bidmachine.media3.exoplayer.e
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public final void onAudioFocusChange(int i10) {
                    g.this.g(i10);
                }
            }, this.f55929b).a();
            this.f55936i = false;
        }
        return an.d.i(this.f55928a.get(), this.f55935h);
    }

    private void m(int i10) {
        float f10;
        if (this.f55932e == i10) {
            return;
        }
        this.f55932e = i10;
        if (i10 == 4) {
            f10 = 0.2f;
        } else {
            f10 = 1.0f;
        }
        if (this.f55934g == f10) {
            return;
        }
        this.f55934g = f10;
        a aVar = this.f55930c;
        if (aVar != null) {
            aVar.s(f10);
        }
    }

    private boolean n(int i10) {
        if (i10 != 1 && this.f55933f == 1) {
            return true;
        }
        return false;
    }

    private boolean p() {
        zm.c cVar = this.f55931d;
        if (cVar != null && cVar.f71820a == 1) {
            return true;
        }
        return false;
    }

    public float f() {
        return this.f55934g;
    }

    public void i() {
        this.f55930c = null;
        c();
        m(0);
    }

    public void l(@Nullable zm.c cVar) {
        if (!Objects.equals(this.f55931d, cVar)) {
            this.f55931d = cVar;
            int d10 = d(cVar);
            this.f55933f = d10;
            boolean z10 = true;
            if (d10 != 1 && d10 != 0) {
                z10 = false;
            }
            cn.a.b(z10, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
        }
    }

    public int o(boolean z10, int i10) {
        if (!n(i10)) {
            c();
            m(0);
            return 1;
        } else if (z10) {
            return j();
        } else {
            int i11 = this.f55932e;
            if (i11 != 1) {
                if (i11 == 3) {
                    return 0;
                }
                return 1;
            }
            return -1;
        }
    }
}
