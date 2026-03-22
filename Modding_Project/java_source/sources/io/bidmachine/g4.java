package io.bidmachine;

import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializationParamsImpl.java */
/* loaded from: classes7.dex */
public class g4 implements InitializationParams {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final lp.h f54461a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final lp.d f54462b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g4(@NonNull TargetingParams targetingParams, @NonNull lp.d dVar) {
        this.f54461a = new q5(dVar, targetingParams);
        this.f54462b = dVar;
    }

    @Override // io.bidmachine.GeneralParams
    @NonNull
    public lp.d getDataRestrictions() {
        return this.f54462b;
    }

    @Override // io.bidmachine.GeneralParams
    @NonNull
    public lp.h getTargetingInfo() {
        return this.f54461a;
    }

    @Override // io.bidmachine.GeneralParams
    public boolean isTestMode() {
        return j2.e().C();
    }
}
