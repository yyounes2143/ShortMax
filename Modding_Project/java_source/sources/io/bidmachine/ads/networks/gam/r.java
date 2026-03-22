package io.bidmachine.ads.networks.gam;

import androidx.annotation.NonNull;
import io.bidmachine.AdsFormat;
import java.util.List;
/* compiled from: GAMTypeConfig.java */
/* loaded from: classes7.dex */
public class r {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final AdsFormat f53707a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final List<t> f53708b;

    /* renamed from: c  reason: collision with root package name */
    private final int f53709c;

    public r(@NonNull AdsFormat adsFormat, @NonNull List<t> list, int i10) {
        this.f53707a = adsFormat;
        this.f53709c = i10;
        this.f53708b = list;
    }

    @NonNull
    public AdsFormat a() {
        return this.f53707a;
    }

    public int b() {
        return this.f53709c;
    }

    @NonNull
    public List<t> c() {
        return this.f53708b;
    }
}
