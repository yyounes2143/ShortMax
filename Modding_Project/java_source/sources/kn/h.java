package kn;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Objects;
/* compiled from: ProgramInformation.java */
/* loaded from: classes8.dex */
public final class h {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f60846a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f60847b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f60848c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f60849d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f60850e;

    public h(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        this.f60846a = str;
        this.f60847b = str2;
        this.f60848c = str3;
        this.f60849d = str4;
        this.f60850e = str5;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (Objects.equals(this.f60846a, hVar.f60846a) && Objects.equals(this.f60847b, hVar.f60847b) && Objects.equals(this.f60848c, hVar.f60848c) && Objects.equals(this.f60849d, hVar.f60849d) && Objects.equals(this.f60850e, hVar.f60850e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        String str = this.f60846a;
        int i14 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i15 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
        String str2 = this.f60847b;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i16 = (i15 + i11) * 31;
        String str3 = this.f60848c;
        if (str3 != null) {
            i12 = str3.hashCode();
        } else {
            i12 = 0;
        }
        int i17 = (i16 + i12) * 31;
        String str4 = this.f60849d;
        if (str4 != null) {
            i13 = str4.hashCode();
        } else {
            i13 = 0;
        }
        int i18 = (i17 + i13) * 31;
        String str5 = this.f60850e;
        if (str5 != null) {
            i14 = str5.hashCode();
        }
        return i18 + i14;
    }
}
