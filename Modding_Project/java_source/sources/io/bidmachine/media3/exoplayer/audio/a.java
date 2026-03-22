package io.bidmachine.media3.exoplayer.audio;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioProfile;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import com.google.android.gms.internal.ads.w;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.y;
import com.google.common.primitives.Ints;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import zm.u;
/* compiled from: AudioCapabilities.java */
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f55496c = new a(ImmutableList.B(e.f55501d));
    @SuppressLint({"InlinedApi"})

    /* renamed from: d  reason: collision with root package name */
    private static final ImmutableList<Integer> f55497d = ImmutableList.D(2, 5, 6);
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    static final ImmutableMap<Integer, Integer> f55498e = new ImmutableMap.a().f(5, 6).f(17, 6).f(7, 6).f(30, 10).f(18, 6).f(6, 8).f(8, 8).f(14, 8).c();

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<e> f55499a;

    /* renamed from: b  reason: collision with root package name */
    private final int f55500b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioCapabilities.java */
    @RequiresApi(23)
    /* loaded from: classes8.dex */
    public static final class b {
        private static ImmutableSet<Integer> a() {
            ImmutableSet.a i10 = new ImmutableSet.a().i(8, 7);
            int i11 = m0.f3614a;
            if (i11 >= 31) {
                i10.i(26, 27);
            }
            if (i11 >= 33) {
                i10.a(30);
            }
            return i10.l();
        }

        public static boolean b(AudioManager audioManager, @Nullable io.bidmachine.media3.exoplayer.audio.c cVar) {
            AudioDeviceInfo[] devices = cVar == null ? ((AudioManager) cn.a.e(audioManager)).getDevices(2) : new AudioDeviceInfo[]{cVar.f55520a};
            ImmutableSet<Integer> a10 = a();
            for (AudioDeviceInfo audioDeviceInfo : devices) {
                if (a10.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioCapabilities.java */
    @RequiresApi(29)
    /* loaded from: classes8.dex */
    public static final class c {
        public static ImmutableList<Integer> a(zm.c cVar) {
            boolean isDirectPlaybackSupported;
            ImmutableList.a r10 = ImmutableList.r();
            y<Integer> it = a.f55498e.keySet().iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                int intValue = next.intValue();
                if (m0.f3614a >= m0.K(intValue)) {
                    isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(48000).build(), cVar.a().f71826a);
                    if (isDirectPlaybackSupported) {
                        r10.a(next);
                    }
                }
            }
            r10.a(2);
            return r10.k();
        }

        public static int b(int i10, int i11, zm.c cVar) {
            boolean isDirectPlaybackSupported;
            for (int i12 = 10; i12 > 0; i12--) {
                int M = m0.M(i12);
                if (M != 0) {
                    isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11).setChannelMask(M).build(), cVar.a().f71826a);
                    if (isDirectPlaybackSupported) {
                        return i12;
                    }
                }
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioCapabilities.java */
    @RequiresApi(33)
    /* loaded from: classes8.dex */
    public static final class d {
        public static a a(AudioManager audioManager, zm.c cVar) {
            List directProfilesForAttributes;
            directProfilesForAttributes = audioManager.getDirectProfilesForAttributes(cVar.a().f71826a);
            return new a(a.c(directProfilesForAttributes));
        }

        @Nullable
        public static io.bidmachine.media3.exoplayer.audio.c b(AudioManager audioManager, zm.c cVar) {
            List audioDevicesForAttributes;
            try {
                audioDevicesForAttributes = ((AudioManager) cn.a.e(audioManager)).getAudioDevicesForAttributes(cVar.a().f71826a);
                if (audioDevicesForAttributes.isEmpty()) {
                    return null;
                }
                return new io.bidmachine.media3.exoplayer.audio.c((AudioDeviceInfo) audioDevicesForAttributes.get(0));
            } catch (RuntimeException unused) {
                return null;
            }
        }
    }

    private static boolean b() {
        String str = Build.MANUFACTURER;
        if (!str.equals("Amazon") && !str.equals("Xiaomi")) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(33)
    @SuppressLint({"WrongConstant"})
    public static ImmutableList<e> c(List<AudioProfile> list) {
        int encapsulationType;
        int format;
        int[] channelMasks;
        int[] channelMasks2;
        HashMap hashMap = new HashMap();
        hashMap.put(2, new HashSet(Ints.c(12)));
        for (int i10 = 0; i10 < list.size(); i10++) {
            AudioProfile a10 = w.a(list.get(i10));
            encapsulationType = a10.getEncapsulationType();
            if (encapsulationType != 1) {
                format = a10.getFormat();
                if (m0.G0(format) || f55498e.containsKey(Integer.valueOf(format))) {
                    if (hashMap.containsKey(Integer.valueOf(format))) {
                        channelMasks2 = a10.getChannelMasks();
                        ((Set) cn.a.e((Set) hashMap.get(Integer.valueOf(format)))).addAll(Ints.c(channelMasks2));
                    } else {
                        Integer valueOf = Integer.valueOf(format);
                        channelMasks = a10.getChannelMasks();
                        hashMap.put(valueOf, new HashSet(Ints.c(channelMasks)));
                    }
                }
            }
        }
        ImmutableList.a r10 = ImmutableList.r();
        for (Map.Entry entry : hashMap.entrySet()) {
            r10.a(new e(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
        }
        return r10.k();
    }

    private static ImmutableList<e> d(@Nullable int[] iArr, int i10) {
        ImmutableList.a r10 = ImmutableList.r();
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i11 : iArr) {
            r10.a(new e(i11, i10));
        }
        return r10.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"InlinedApi"})
    public static a e(Context context, @Nullable Intent intent, zm.c cVar, @Nullable io.bidmachine.media3.exoplayer.audio.c cVar2) {
        boolean z10;
        AudioManager c10 = an.d.c(context);
        if (cVar2 == null) {
            if (m0.f3614a >= 33) {
                cVar2 = d.b(c10, cVar);
            } else {
                cVar2 = null;
            }
        }
        int i10 = m0.f3614a;
        if (i10 >= 33 && (m0.K0(context) || m0.D0(context))) {
            return d.a(c10, cVar);
        }
        if (i10 >= 23 && b.b(c10, cVar2)) {
            return f55496c;
        }
        ImmutableSet.a aVar = new ImmutableSet.a();
        aVar.a(2);
        if (i10 >= 29 && (m0.K0(context) || m0.D0(context))) {
            aVar.j(c.a(cVar));
            return new a(d(Ints.m(aVar.l()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        if (Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((z10 || b()) && Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            aVar.j(f55497d);
        }
        if (intent != null && !z10 && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 1) {
            int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
            if (intArrayExtra != null) {
                aVar.j(Ints.c(intArrayExtra));
            }
            return new a(d(Ints.m(aVar.l()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
        }
        return new a(d(Ints.m(aVar.l()), 10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"UnprotectedReceiver"})
    public static a f(Context context, zm.c cVar, @Nullable io.bidmachine.media3.exoplayer.audio.c cVar2) {
        return e(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), cVar, cVar2);
    }

    private static int g(int i10) {
        int i11 = m0.f3614a;
        if (i11 <= 28) {
            if (i10 == 7) {
                i10 = 8;
            } else if (i10 == 3 || i10 == 4 || i10 == 5) {
                i10 = 6;
            }
        }
        if (i11 <= 26 && "fugu".equals(Build.DEVICE) && i10 == 1) {
            i10 = 2;
        }
        return m0.M(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Uri i() {
        if (b()) {
            return Settings.Global.getUriFor("external_surround_sound_enabled");
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (m0.t(this.f55499a, aVar.f55499a) && this.f55500b == aVar.f55500b) {
            return true;
        }
        return false;
    }

    @Nullable
    public Pair<Integer, Integer> h(io.bidmachine.media3.common.a aVar, zm.c cVar) {
        int f10 = u.f((String) cn.a.e(aVar.f55174o), aVar.f55170k);
        if (!f55498e.containsKey(Integer.valueOf(f10))) {
            return null;
        }
        if (f10 == 18 && !k(18)) {
            f10 = 6;
        } else if ((f10 == 8 && !k(8)) || (f10 == 30 && !k(30))) {
            f10 = 7;
        }
        if (!k(f10)) {
            return null;
        }
        e eVar = (e) cn.a.e(this.f55499a.get(f10));
        int i10 = aVar.E;
        if (i10 != -1 && f10 != 18) {
            if (aVar.f55174o.equals("audio/vnd.dts.uhd;profile=p2") && m0.f3614a < 33) {
                if (i10 > 10) {
                    return null;
                }
            } else if (!eVar.c(i10)) {
                return null;
            }
        } else {
            int i11 = aVar.F;
            if (i11 == -1) {
                i11 = 48000;
            }
            i10 = eVar.b(i11, cVar);
        }
        int g10 = g(i10);
        if (g10 == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(f10), Integer.valueOf(g10));
    }

    public int hashCode() {
        return this.f55500b + (m0.u(this.f55499a) * 31);
    }

    public boolean j(io.bidmachine.media3.common.a aVar, zm.c cVar) {
        if (h(aVar, cVar) != null) {
            return true;
        }
        return false;
    }

    public boolean k(int i10) {
        return m0.r(this.f55499a, i10);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f55500b + ", audioProfiles=" + this.f55499a + "]";
    }

    private a(List<e> list) {
        this.f55499a = new SparseArray<>();
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            this.f55499a.put(eVar.f55502a, eVar);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f55499a.size(); i12++) {
            i11 = Math.max(i11, this.f55499a.valueAt(i12).f55503b);
        }
        this.f55500b = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioCapabilities.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: d  reason: collision with root package name */
        public static final e f55501d;

        /* renamed from: a  reason: collision with root package name */
        public final int f55502a;

        /* renamed from: b  reason: collision with root package name */
        public final int f55503b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final ImmutableSet<Integer> f55504c;

        static {
            e eVar;
            if (m0.f3614a >= 33) {
                eVar = new e(2, a(10));
            } else {
                eVar = new e(2, 10);
            }
            f55501d = eVar;
        }

        @RequiresApi(33)
        public e(int i10, Set<Integer> set) {
            this.f55502a = i10;
            ImmutableSet<Integer> t10 = ImmutableSet.t(set);
            this.f55504c = t10;
            y<Integer> it = t10.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                i11 = Math.max(i11, Integer.bitCount(it.next().intValue()));
            }
            this.f55503b = i11;
        }

        private static ImmutableSet<Integer> a(int i10) {
            ImmutableSet.a aVar = new ImmutableSet.a();
            for (int i11 = 1; i11 <= i10; i11++) {
                aVar.a(Integer.valueOf(m0.M(i11)));
            }
            return aVar.l();
        }

        public int b(int i10, zm.c cVar) {
            if (this.f55504c != null) {
                return this.f55503b;
            }
            if (m0.f3614a >= 29) {
                return c.b(this.f55502a, i10, cVar);
            }
            return ((Integer) cn.a.e(a.f55498e.getOrDefault(Integer.valueOf(this.f55502a), 0))).intValue();
        }

        public boolean c(int i10) {
            if (this.f55504c == null) {
                if (i10 > this.f55503b) {
                    return false;
                }
                return true;
            }
            int M = m0.M(i10);
            if (M == 0) {
                return false;
            }
            return this.f55504c.contains(Integer.valueOf(M));
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f55502a == eVar.f55502a && this.f55503b == eVar.f55503b && Objects.equals(this.f55504c, eVar.f55504c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int i10 = ((this.f55502a * 31) + this.f55503b) * 31;
            ImmutableSet<Integer> immutableSet = this.f55504c;
            if (immutableSet == null) {
                hashCode = 0;
            } else {
                hashCode = immutableSet.hashCode();
            }
            return i10 + hashCode;
        }

        public String toString() {
            return "AudioProfile[format=" + this.f55502a + ", maxChannelCount=" + this.f55503b + ", channelMasks=" + this.f55504c + "]";
        }

        public e(int i10, int i11) {
            this.f55502a = i10;
            this.f55503b = i11;
            this.f55504c = null;
        }
    }
}
