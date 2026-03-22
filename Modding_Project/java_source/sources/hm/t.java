package hm;

import androidx.annotation.NonNull;
/* compiled from: NetworkParamsImpl.java */
/* loaded from: classes7.dex */
public abstract class t implements s {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f52918a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f52919b;

    public t(@NonNull String str, @NonNull String str2) {
        this.f52918a = str;
        this.f52919b = str2;
    }

    @Override // hm.s
    @NonNull
    public String a() {
        return this.f52918a;
    }

    @Override // hm.s
    @NonNull
    public String getNetworkName() {
        return this.f52919b;
    }
}
