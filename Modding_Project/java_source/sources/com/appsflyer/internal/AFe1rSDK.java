package com.appsflyer.internal;

import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public abstract class AFe1rSDK {
    @NotNull
    public static final AFa1ySDK AFa1ySDK = new AFa1ySDK(null);
    @NotNull
    private static final List<String> getMediationNetwork = CollectionsKt.q(AFInAppEventType.ACHIEVEMENT_UNLOCKED, AFInAppEventType.AD_CLICK, AFInAppEventType.AD_VIEW, AFInAppEventType.ADD_PAYMENT_INFO, AFInAppEventType.ADD_TO_CART, AFInAppEventType.ADD_TO_WISH_LIST, AFInAppEventType.COMPLETE_REGISTRATION, AFInAppEventType.CONTENT_VIEW, AFInAppEventType.INITIATED_CHECKOUT, AFInAppEventType.INVITE, AFInAppEventType.LEVEL_ACHIEVED, AFInAppEventType.LIST_VIEW, AFInAppEventType.LOGIN, AFInAppEventType.OPENED_FROM_PUSH_NOTIFICATION, AFInAppEventType.PURCHASE, AFInAppEventType.RATE, AFInAppEventType.RE_ENGAGE, AFInAppEventType.SEARCH, AFInAppEventType.SHARE, AFInAppEventType.SPENT_CREDIT, AFInAppEventType.START_TRIAL, AFInAppEventType.SUBSCRIBE, AFInAppEventType.TRAVEL_BOOKING, AFInAppEventType.TUTORIAL_COMPLETION, AFInAppEventType.UPDATE);
    @NotNull
    public final String getRevenue;

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1tSDK extends AFe1rSDK {
        @NotNull
        public static final AFa1tSDK INSTANCE = new AFa1tSDK();

        private AFa1tSDK() {
            super("install");
        }
    }

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1uSDK extends AFe1rSDK {
        @NotNull
        public static final AFa1uSDK INSTANCE = new AFa1uSDK();

        private AFa1uSDK() {
            super("af_sandbox_revenue");
        }
    }

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1ySDK {
        private AFa1ySDK() {
        }

        @Nullable
        public static AFe1rSDK getMediationNetwork(@NotNull AFh1mSDK aFh1mSDK) {
            Float f10;
            String obj;
            Object obj2;
            String obj3;
            Intrinsics.checkNotNullParameter(aFh1mSDK, "");
            if (aFh1mSDK.AFAdRevenueData() == AFe1pSDK.CONVERSION) {
                return AFa1tSDK.INSTANCE;
            }
            Integer num = null;
            if (aFh1mSDK.AFAdRevenueData() != AFe1pSDK.INAPP || !AFe1rSDK.getMediationNetwork.contains(aFh1mSDK.areAllFieldsValid)) {
                return null;
            }
            Map<String, Object> map = aFh1mSDK.getRevenue;
            if (map != null && (obj2 = map.get(AFInAppEventParameterName.REVENUE)) != null && (obj3 = obj2.toString()) != null) {
                f10 = StringsKt.s(obj3);
            } else {
                f10 = null;
            }
            Object obj4 = aFh1mSDK.AFAdRevenueData.get("iaecounter");
            if (obj4 != null && (obj = obj4.toString()) != null) {
                num = StringsKt.toIntOrNull(obj);
            }
            String str = aFh1mSDK.areAllFieldsValid;
            Intrinsics.checkNotNullExpressionValue(str, "");
            return new AFa1zSDK(str, f10, num);
        }

        public /* synthetic */ AFa1ySDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public static final class AFa1zSDK extends AFe1rSDK {
        @Nullable
        public final Integer AFAdRevenueData;
        @Nullable
        public final Float getCurrencyIso4217Code;
        @NotNull
        private final String getMediationNetwork;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AFa1zSDK(@NotNull String str, @Nullable Float f10, @Nullable Integer num) {
            super(str);
            Intrinsics.checkNotNullParameter(str, "");
            this.getMediationNetwork = str;
            this.getCurrencyIso4217Code = f10;
            this.AFAdRevenueData = num;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AFa1zSDK)) {
                return false;
            }
            AFa1zSDK aFa1zSDK = (AFa1zSDK) obj;
            if (Intrinsics.areEqual(this.getMediationNetwork, aFa1zSDK.getMediationNetwork) && Intrinsics.areEqual((Object) this.getCurrencyIso4217Code, (Object) aFa1zSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.AFAdRevenueData, aFa1zSDK.AFAdRevenueData)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = this.getMediationNetwork.hashCode() * 31;
            Float f10 = this.getCurrencyIso4217Code;
            int i10 = 0;
            if (f10 == null) {
                hashCode = 0;
            } else {
                hashCode = f10.hashCode();
            }
            int i11 = (hashCode2 + hashCode) * 31;
            Integer num = this.AFAdRevenueData;
            if (num != null) {
                i10 = num.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public final String toString() {
            String str = this.getMediationNetwork;
            Float f10 = this.getCurrencyIso4217Code;
            Integer num = this.AFAdRevenueData;
            return "PredefinedInAppEvent(name=" + str + ", eventRevenue=" + f10 + ", eventCounter=" + num + ")";
        }
    }

    public AFe1rSDK(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        this.getRevenue = str;
    }
}
