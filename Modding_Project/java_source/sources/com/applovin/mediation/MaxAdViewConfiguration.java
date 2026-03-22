package com.applovin.mediation;

import androidx.annotation.NonNull;
import com.applovin.impl.mediation.MaxAdViewConfigurationImpl;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
/* loaded from: classes2.dex */
public abstract class MaxAdViewConfiguration {

    /* loaded from: classes2.dex */
    public enum AdaptiveType {
        NONE(DevicePublicKeyStringDef.NONE),
        ANCHORED("anchored"),
        INLINE("inline");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f10754a;

        AdaptiveType(String str) {
            this.f10754a = str;
        }

        @Override // java.lang.Enum
        @NonNull
        public String toString() {
            return this.f10754a;
        }
    }

    /* loaded from: classes2.dex */
    public interface Builder {
        MaxAdViewConfiguration build();

        Builder setAdaptiveType(AdaptiveType adaptiveType);

        Builder setAdaptiveWidth(int i10);

        Builder setInlineMaximumHeight(int i10);
    }

    public static Builder builder() {
        return new MaxAdViewConfigurationImpl.BuilderImpl();
    }

    public abstract AdaptiveType getAdaptiveType();

    public abstract int getAdaptiveWidth();

    public abstract int getInlineMaximumHeight();
}
