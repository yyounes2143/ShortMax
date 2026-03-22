package x0;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.webkit.ProxyConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: KeyPath.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: c  reason: collision with root package name */
    public static final d f70376c = new d("COMPOSITION");

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f70377a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private e f70378b;

    public d(String... strArr) {
        this.f70377a = Arrays.asList(strArr);
    }

    private boolean b() {
        List<String> list = this.f70377a;
        return list.get(list.size() - 1).equals("**");
    }

    private boolean f(String str) {
        return "__container".equals(str);
    }

    @CheckResult
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public d a(String str) {
        d dVar = new d(this);
        dVar.f70377a.add(str);
        return dVar;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean c(String str, int i10) {
        boolean z10;
        boolean z11;
        if (i10 >= this.f70377a.size()) {
            return false;
        }
        if (i10 == this.f70377a.size() - 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        String str2 = this.f70377a.get(i10);
        if (!str2.equals("**")) {
            if (!str2.equals(str) && !str2.equals(ProxyConfig.MATCH_ALL_SCHEMES)) {
                z11 = false;
            } else {
                z11 = true;
            }
            if ((!z10 && (i10 != this.f70377a.size() - 2 || !b())) || !z11) {
                return false;
            }
            return true;
        } else if (!z10 && this.f70377a.get(i10 + 1).equals(str)) {
            if (i10 != this.f70377a.size() - 2 && (i10 != this.f70377a.size() - 3 || !b())) {
                return false;
            }
            return true;
        } else if (z10) {
            return true;
        } else {
            int i11 = i10 + 1;
            if (i11 < this.f70377a.size() - 1) {
                return false;
            }
            return this.f70377a.get(i11).equals(str);
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public e d() {
        return this.f70378b;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int e(String str, int i10) {
        if (f(str)) {
            return 0;
        }
        if (!this.f70377a.get(i10).equals("**")) {
            return 1;
        }
        if (i10 == this.f70377a.size() - 1 || !this.f70377a.get(i10 + 1).equals(str)) {
            return 0;
        }
        return 2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (!this.f70377a.equals(dVar.f70377a)) {
            return false;
        }
        e eVar = this.f70378b;
        e eVar2 = dVar.f70378b;
        if (eVar != null) {
            return eVar.equals(eVar2);
        }
        if (eVar2 == null) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean g(String str, int i10) {
        if (f(str)) {
            return true;
        }
        if (i10 >= this.f70377a.size()) {
            return false;
        }
        if (this.f70377a.get(i10).equals(str) || this.f70377a.get(i10).equals("**") || this.f70377a.get(i10).equals(ProxyConfig.MATCH_ALL_SCHEMES)) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean h(String str, int i10) {
        if ("__container".equals(str) || i10 < this.f70377a.size() - 1 || this.f70377a.get(i10).equals("**")) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f70377a.hashCode() * 31;
        e eVar = this.f70378b;
        if (eVar != null) {
            i10 = eVar.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public d i(e eVar) {
        d dVar = new d(this);
        dVar.f70378b = eVar;
        return dVar;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("KeyPath{keys=");
        sb2.append(this.f70377a);
        sb2.append(",resolved=");
        if (this.f70378b != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        sb2.append(z10);
        sb2.append('}');
        return sb2.toString();
    }

    private d(d dVar) {
        this.f70377a = new ArrayList(dVar.f70377a);
        this.f70378b = dVar.f70378b;
    }
}
