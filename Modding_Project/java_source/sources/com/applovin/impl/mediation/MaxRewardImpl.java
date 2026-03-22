package com.applovin.impl.mediation;

import androidx.annotation.NonNull;
import com.applovin.mediation.MaxReward;
/* loaded from: classes2.dex */
public class MaxRewardImpl implements MaxReward {

    /* renamed from: a  reason: collision with root package name */
    private final String f8538a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8539b;

    private MaxRewardImpl(int i10, String str) {
        if (i10 >= 0) {
            this.f8538a = str;
            this.f8539b = i10;
            return;
        }
        throw new IllegalArgumentException("Reward amount must be greater than or equal to 0");
    }

    public static MaxReward create(int i10, String str) {
        return new MaxRewardImpl(i10, str);
    }

    public static MaxReward createDefault() {
        return create(0, "");
    }

    @Override // com.applovin.mediation.MaxReward
    public final int getAmount() {
        return this.f8539b;
    }

    @Override // com.applovin.mediation.MaxReward
    public final String getLabel() {
        return this.f8538a;
    }

    @NonNull
    public String toString() {
        return "MaxReward{amount=" + this.f8539b + ", label=" + this.f8538a + "}";
    }
}
