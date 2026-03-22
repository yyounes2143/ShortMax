package zm;

import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import cn.m0;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Objects;
/* compiled from: DeviceInfo.java */
/* loaded from: classes8.dex */
public final class k {

    /* renamed from: e  reason: collision with root package name */
    public static final k f71964e = new b(0).e();

    /* renamed from: f  reason: collision with root package name */
    private static final String f71965f = m0.C0(0);

    /* renamed from: g  reason: collision with root package name */
    private static final String f71966g = m0.C0(1);

    /* renamed from: h  reason: collision with root package name */
    private static final String f71967h = m0.C0(2);

    /* renamed from: i  reason: collision with root package name */
    private static final String f71968i = m0.C0(3);

    /* renamed from: a  reason: collision with root package name */
    public final int f71969a;
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)

    /* renamed from: b  reason: collision with root package name */
    public final int f71970b;
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)

    /* renamed from: c  reason: collision with root package name */
    public final int f71971c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f71972d;

    /* compiled from: DeviceInfo.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f71973a;

        /* renamed from: b  reason: collision with root package name */
        private int f71974b;

        /* renamed from: c  reason: collision with root package name */
        private int f71975c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f71976d;

        public b(int i10) {
            this.f71973a = i10;
        }

        public k e() {
            boolean z10;
            if (this.f71974b <= this.f71975c) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.a(z10);
            return new k(this);
        }

        public b f(@IntRange(from = 0) int i10) {
            this.f71975c = i10;
            return this;
        }

        public b g(@IntRange(from = 0) int i10) {
            this.f71974b = i10;
            return this;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f71969a == kVar.f71969a && this.f71970b == kVar.f71970b && this.f71971c == kVar.f71971c && Objects.equals(this.f71972d, kVar.f71972d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i10 = (((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f71969a) * 31) + this.f71970b) * 31) + this.f71971c) * 31;
        String str = this.f71972d;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return i10 + hashCode;
    }

    private k(b bVar) {
        this.f71969a = bVar.f71973a;
        this.f71970b = bVar.f71974b;
        this.f71971c = bVar.f71975c;
        this.f71972d = bVar.f71976d;
    }
}
