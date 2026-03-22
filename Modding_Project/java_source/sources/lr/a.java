package lr;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: Version.java */
/* loaded from: classes8.dex */
public class a implements Comparable<a> {

    /* renamed from: a  reason: collision with root package name */
    private final int f62294a;

    /* renamed from: b  reason: collision with root package name */
    private final int f62295b;

    /* renamed from: c  reason: collision with root package name */
    private final int f62296c;

    public a(int i10, int i11, int i12) {
        this.f62294a = i10;
        this.f62295b = i11;
        this.f62296c = i12;
    }

    @Nullable
    public static a g(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] split = str.split("\\.");
            if (split.length == 0) {
                return null;
            }
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < split.length; i13++) {
                if (i13 != 0) {
                    if (i13 != 1) {
                        if (i13 != 2) {
                            i12 = (i12 * 100) + Integer.parseInt(split[i13]);
                        } else {
                            i12 = Integer.parseInt(split[2]);
                        }
                    } else {
                        i11 = Integer.parseInt(split[1]);
                    }
                } else {
                    i10 = Integer.parseInt(split[0]);
                }
            }
            return new a(i10, i11, i12);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(a aVar) {
        int compare = Integer.compare(this.f62294a, aVar.f62294a);
        if (compare != 0) {
            return compare;
        }
        int compare2 = Integer.compare(this.f62295b, aVar.f62295b);
        if (compare2 != 0) {
            return compare2;
        }
        return Integer.compare(this.f62296c, aVar.f62296c);
    }

    public boolean b(@NonNull a aVar) {
        if (compareTo(aVar) > 0) {
            return true;
        }
        return false;
    }

    public boolean c(@NonNull a aVar) {
        if (compareTo(aVar) >= 0) {
            return true;
        }
        return false;
    }

    public boolean e(@NonNull a aVar) {
        if (compareTo(aVar) < 0) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f62294a == aVar.f62294a && this.f62295b == aVar.f62295b && this.f62296c == aVar.f62296c) {
            return true;
        }
        return false;
    }

    public boolean f(@NonNull a aVar) {
        if (compareTo(aVar) <= 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f62294a), Integer.valueOf(this.f62295b), Integer.valueOf(this.f62296c));
    }

    @NonNull
    public String toString() {
        return this.f62294a + "." + this.f62295b + "." + this.f62296c;
    }
}
