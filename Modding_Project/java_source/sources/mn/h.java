package mn;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import zm.t;
/* compiled from: HlsTrackMetadataEntry.java */
/* loaded from: classes8.dex */
public final class h implements t.a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f62542a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f62543b;

    /* renamed from: c  reason: collision with root package name */
    public final List<a> f62544c;

    /* compiled from: HlsTrackMetadataEntry.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f62545a;

        /* renamed from: b  reason: collision with root package name */
        public final int f62546b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f62547c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final String f62548d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final String f62549e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final String f62550f;

        public a(int i10, int i11, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.f62545a = i10;
            this.f62546b = i11;
            this.f62547c = str;
            this.f62548d = str2;
            this.f62549e = str3;
            this.f62550f = str4;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f62545a == aVar.f62545a && this.f62546b == aVar.f62546b && TextUtils.equals(this.f62547c, aVar.f62547c) && TextUtils.equals(this.f62548d, aVar.f62548d) && TextUtils.equals(this.f62549e, aVar.f62549e) && TextUtils.equals(this.f62550f, aVar.f62550f)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int i11;
            int i12;
            int i13 = ((this.f62545a * 31) + this.f62546b) * 31;
            String str = this.f62547c;
            int i14 = 0;
            if (str != null) {
                i10 = str.hashCode();
            } else {
                i10 = 0;
            }
            int i15 = (i13 + i10) * 31;
            String str2 = this.f62548d;
            if (str2 != null) {
                i11 = str2.hashCode();
            } else {
                i11 = 0;
            }
            int i16 = (i15 + i11) * 31;
            String str3 = this.f62549e;
            if (str3 != null) {
                i12 = str3.hashCode();
            } else {
                i12 = 0;
            }
            int i17 = (i16 + i12) * 31;
            String str4 = this.f62550f;
            if (str4 != null) {
                i14 = str4.hashCode();
            }
            return i17 + i14;
        }
    }

    public h(@Nullable String str, @Nullable String str2, List<a> list) {
        this.f62542a = str;
        this.f62543b = str2;
        this.f62544c = Collections.unmodifiableList(new ArrayList(list));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        if (TextUtils.equals(this.f62542a, hVar.f62542a) && TextUtils.equals(this.f62543b, hVar.f62543b) && this.f62544c.equals(hVar.f62544c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f62542a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.f62543b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return ((i12 + i11) * 31) + this.f62544c.hashCode();
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HlsTrackMetadataEntry");
        if (this.f62542a != null) {
            str = " [" + this.f62542a + ", " + this.f62543b + "]";
        } else {
            str = "";
        }
        sb2.append(str);
        return sb2.toString();
    }
}
