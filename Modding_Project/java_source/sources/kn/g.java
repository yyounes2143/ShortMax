package kn;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;
/* compiled from: Period.java */
/* loaded from: classes8.dex */
public class g {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f60841a;

    /* renamed from: b  reason: collision with root package name */
    public final long f60842b;

    /* renamed from: c  reason: collision with root package name */
    public final List<a> f60843c;

    /* renamed from: d  reason: collision with root package name */
    public final List<f> f60844d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final e f60845e;

    public g(@Nullable String str, long j10, List<a> list, List<f> list2) {
        this(str, j10, list, list2, null);
    }

    public int a(int i10) {
        int size = this.f60843c.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.f60843c.get(i11).f60796b == i10) {
                return i11;
            }
        }
        return -1;
    }

    public g(@Nullable String str, long j10, List<a> list, List<f> list2, @Nullable e eVar) {
        this.f60841a = str;
        this.f60842b = j10;
        this.f60843c = Collections.unmodifiableList(list);
        this.f60844d = Collections.unmodifiableList(list2);
        this.f60845e = eVar;
    }
}
