package zm;

import android.media.AudioAttributes;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.m0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: AudioAttributes.java */
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: g  reason: collision with root package name */
    public static final c f71814g = new e().a();

    /* renamed from: h  reason: collision with root package name */
    private static final String f71815h = m0.C0(0);

    /* renamed from: i  reason: collision with root package name */
    private static final String f71816i = m0.C0(1);

    /* renamed from: j  reason: collision with root package name */
    private static final String f71817j = m0.C0(2);

    /* renamed from: k  reason: collision with root package name */
    private static final String f71818k = m0.C0(3);

    /* renamed from: l  reason: collision with root package name */
    private static final String f71819l = m0.C0(4);

    /* renamed from: a  reason: collision with root package name */
    public final int f71820a;

    /* renamed from: b  reason: collision with root package name */
    public final int f71821b;

    /* renamed from: c  reason: collision with root package name */
    public final int f71822c;

    /* renamed from: d  reason: collision with root package name */
    public final int f71823d;

    /* renamed from: e  reason: collision with root package name */
    public final int f71824e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f71825f;

    /* compiled from: AudioAttributes.java */
    @RequiresApi(29)
    /* loaded from: classes8.dex */
    private static final class b {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setAllowedCapturePolicy(i10);
        }
    }

    /* compiled from: AudioAttributes.java */
    @RequiresApi(32)
    /* renamed from: zm.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private static final class C0989c {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setSpatializationBehavior(i10);
        }
    }

    /* compiled from: AudioAttributes.java */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final AudioAttributes f71826a;

        private d(c cVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(cVar.f71820a).setFlags(cVar.f71821b).setUsage(cVar.f71822c);
            int i10 = m0.f3614a;
            if (i10 >= 29) {
                b.a(usage, cVar.f71823d);
            }
            if (i10 >= 32) {
                C0989c.a(usage, cVar.f71824e);
            }
            this.f71826a = usage.build();
        }
    }

    /* compiled from: AudioAttributes.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private int f71827a = 0;

        /* renamed from: b  reason: collision with root package name */
        private int f71828b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f71829c = 1;

        /* renamed from: d  reason: collision with root package name */
        private int f71830d = 1;

        /* renamed from: e  reason: collision with root package name */
        private int f71831e = 0;

        public c a() {
            return new c(this.f71827a, this.f71828b, this.f71829c, this.f71830d, this.f71831e);
        }
    }

    public d a() {
        if (this.f71825f == null) {
            this.f71825f = new d();
        }
        return this.f71825f;
    }

    public int b() {
        if ((this.f71821b & 1) == 1) {
            return 1;
        }
        switch (this.f71822c) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 12:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f71820a == cVar.f71820a && this.f71821b == cVar.f71821b && this.f71822c == cVar.f71822c && this.f71823d == cVar.f71823d && this.f71824e == cVar.f71824e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f71820a) * 31) + this.f71821b) * 31) + this.f71822c) * 31) + this.f71823d) * 31) + this.f71824e;
    }

    private c(int i10, int i11, int i12, int i13, int i14) {
        this.f71820a = i10;
        this.f71821b = i11;
        this.f71822c = i12;
        this.f71823d = i13;
        this.f71824e = i14;
    }
}
