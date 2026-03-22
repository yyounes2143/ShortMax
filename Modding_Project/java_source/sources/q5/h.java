package q5;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.primitives.Ints;
import java.util.Arrays;
/* compiled from: AudioCapabilities.java */
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: c  reason: collision with root package name */
    public static final h f65092c = new h(new int[]{2}, 8);

    /* renamed from: d  reason: collision with root package name */
    private static final h f65093d = new h(new int[]{2, 5, 6}, 8);

    /* renamed from: e  reason: collision with root package name */
    private static final ImmutableMap<Integer, Integer> f65094e = new ImmutableMap.a().f(5, 6).f(17, 6).f(7, 6).f(18, 6).f(6, 8).f(8, 8).f(14, 8).c();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f65095a;

    /* renamed from: b  reason: collision with root package name */
    private final int f65096b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioCapabilities.java */
    @RequiresApi(29)
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final AudioAttributes f65097a = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        @DoNotInline
        public static int[] a() {
            boolean isDirectPlaybackSupported;
            ImmutableList.a r10 = ImmutableList.r();
            com.google.common.collect.y it = h.f65094e.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(num.intValue()).setSampleRate(48000).build(), f65097a);
                if (isDirectPlaybackSupported) {
                    r10.a(num);
                }
            }
            r10.a(2);
            return Ints.m(r10.k());
        }

        @DoNotInline
        public static int b(int i10, int i11) {
            boolean isDirectPlaybackSupported;
            for (int i12 = 8; i12 > 0; i12--) {
                isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11).setChannelMask(s0.D(i12)).build(), f65097a);
                if (isDirectPlaybackSupported) {
                    return i12;
                }
            }
            return 0;
        }
    }

    public h(@Nullable int[] iArr, int i10) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f65095a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f65095a = new int[0];
        }
        this.f65096b = i10;
    }

    private static boolean b() {
        if (s0.f2506a >= 17) {
            String str = s0.f2508c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static h c(Context context) {
        return d(context, s0.E0(context, null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    @SuppressLint({"InlinedApi"})
    static h d(Context context, @Nullable Intent intent) {
        if (b() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            return f65093d;
        }
        if (s0.f2506a >= 29 && (s0.r0(context) || s0.m0(context))) {
            return new h(a.a(), 8);
        }
        if (intent != null && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 0) {
            return new h(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return f65092c;
    }

    private static int e(int i10) {
        int i11 = s0.f2506a;
        if (i11 <= 28) {
            if (i10 == 7) {
                i10 = 8;
            } else if (i10 == 3 || i10 == 4 || i10 == 5) {
                i10 = 6;
            }
        }
        if (i11 <= 26 && "fugu".equals(s0.f2507b) && i10 == 1) {
            i10 = 2;
        }
        return s0.D(i10);
    }

    private static int g(int i10, int i11) {
        if (s0.f2506a >= 29) {
            return a.b(i10, i11);
        }
        return ((Integer) b7.a.e(f65094e.getOrDefault(Integer.valueOf(i10), 0))).intValue();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (Arrays.equals(this.f65095a, hVar.f65095a) && this.f65096b == hVar.f65096b) {
            return true;
        }
        return false;
    }

    @Nullable
    public Pair<Integer, Integer> f(v0 v0Var) {
        int d10 = b7.u.d((String) b7.a.e(v0Var.f19157l), v0Var.f19154i);
        if (!f65094e.containsKey(Integer.valueOf(d10))) {
            return null;
        }
        if (d10 == 18 && !i(18)) {
            d10 = 6;
        } else if (d10 == 8 && !i(8)) {
            d10 = 7;
        }
        if (!i(d10)) {
            return null;
        }
        int i10 = v0Var.f19170y;
        if (i10 != -1 && d10 != 18) {
            if (i10 > this.f65096b) {
                return null;
            }
        } else {
            int i11 = v0Var.f19171z;
            if (i11 == -1) {
                i11 = 48000;
            }
            i10 = g(d10, i11);
        }
        int e10 = e(i10);
        if (e10 == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(d10), Integer.valueOf(e10));
    }

    public boolean h(v0 v0Var) {
        if (f(v0Var) != null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f65096b + (Arrays.hashCode(this.f65095a) * 31);
    }

    public boolean i(int i10) {
        if (Arrays.binarySearch(this.f65095a, i10) >= 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f65096b + ", supportedEncodings=" + Arrays.toString(this.f65095a) + "]";
    }
}
