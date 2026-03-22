package com.google.android.gms.ads.admanager;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.AdRequest;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class AdManagerAdRequest extends AdRequest {

    /* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
    /* loaded from: classes4.dex */
    public static final class Builder extends AbstractAdRequestBuilder<Builder> {
        @NonNull
        public Builder addCategoryExclusion(@NonNull String str) {
            this.zza.zzo(str);
            return this;
        }

        @NonNull
        public AdManagerAdRequest build() {
            return new AdManagerAdRequest(this, null);
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        @NonNull
        public final /* bridge */ /* synthetic */ Builder self() {
            return this;
        }

        @NonNull
        public Builder setPublisherProvidedId(@NonNull String str) {
            this.zza.zzC(str);
            return this;
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        @NonNull
        /* renamed from: self  reason: avoid collision after fix types in other method */
        public Builder self2() {
            return this;
        }
    }

    /* synthetic */ AdManagerAdRequest(Builder builder, zza zzaVar) {
        super(builder);
    }

    @Override // com.google.android.gms.ads.AdRequest
    @NonNull
    public Bundle getCustomTargeting() {
        return this.zza.zzf();
    }

    @NonNull
    public String getPublisherProvidedId() {
        return this.zza.zzk();
    }
}
