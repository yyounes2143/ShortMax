package com.startshorts.androidplayer.bean.search;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RedeemCode.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RedeemCode {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int STATUS_BAN = 1;
    public static final int STATUS_EXPIRED = 3;
    public static final int STATUS_HAVE_BEEN_COLLECTED = 2;
    public static final int STATUS_RECEIVED = 5;
    public static final int STATUS_REMOVED = 4;
    public static final int STATUS_UNSUPPORTED = 6;
    public static final int STATUS_USING = 0;
    private final boolean collectShort;
    @NotNull
    private final List<RedeemCodeEquity> equity;
    @NotNull
    private final String shortPlayCode;
    private final int shortPlayId;
    private final int status;
    @NotNull
    private String upack;

    /* compiled from: RedeemCode.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRedeemCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RedeemCode.kt\ncom/startshorts/androidplayer/bean/search/RedeemCode$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1863#2,2:92\n*S KotlinDebug\n*F\n+ 1 RedeemCode.kt\ncom/startshorts/androidplayer/bean/search/RedeemCode$Companion\n*L\n74#1:92,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getEquityListStr(@Nullable List<RedeemCodeEquity> list) {
            String str;
            List<RedeemCodeEquity> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                for (RedeemCodeEquity redeemCodeEquity : CollectionsKt.o0(list)) {
                    Integer type = redeemCodeEquity.getType();
                    if (type != null && type.intValue() == 11) {
                        str = "coin";
                    } else {
                        Integer type2 = redeemCodeEquity.getType();
                        if (type2 != null && type2.intValue() == 12) {
                            str = "bonus";
                        } else {
                            str = "";
                        }
                    }
                    if (str.length() > 0) {
                        sb2.append(str + '_');
                    }
                }
                String sb3 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
                return StringsKt.Q0(sb3, "_");
            }
            return DevicePublicKeyStringDef.NONE;
        }

        @NotNull
        public final String getStatusStr(int i10) {
            switch (i10) {
                case 0:
                    return "using";
                case 1:
                    return "ban";
                case 2:
                    return "have_been_collected";
                case 3:
                    return "expired";
                case 4:
                    return "removed";
                case 5:
                    return "received";
                case 6:
                    return "not_support";
                default:
                    return "";
            }
        }

        private Companion() {
        }
    }

    public RedeemCode(@NotNull List<RedeemCodeEquity> equity, int i10, int i11, boolean z10, @NotNull String shortPlayCode, @NotNull String upack) {
        Intrinsics.checkNotNullParameter(equity, "equity");
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        Intrinsics.checkNotNullParameter(upack, "upack");
        this.equity = equity;
        this.status = i10;
        this.shortPlayId = i11;
        this.collectShort = z10;
        this.shortPlayCode = shortPlayCode;
        this.upack = upack;
    }

    public static /* synthetic */ RedeemCode copy$default(RedeemCode redeemCode, List list, int i10, int i11, boolean z10, String str, String str2, int i12, Object obj) {
        List<RedeemCodeEquity> list2 = list;
        if ((i12 & 1) != 0) {
            list2 = redeemCode.equity;
        }
        if ((i12 & 2) != 0) {
            i10 = redeemCode.status;
        }
        int i13 = i10;
        if ((i12 & 4) != 0) {
            i11 = redeemCode.shortPlayId;
        }
        int i14 = i11;
        if ((i12 & 8) != 0) {
            z10 = redeemCode.collectShort;
        }
        boolean z11 = z10;
        if ((i12 & 16) != 0) {
            str = redeemCode.shortPlayCode;
        }
        String str3 = str;
        if ((i12 & 32) != 0) {
            str2 = redeemCode.upack;
        }
        return redeemCode.copy(list2, i13, i14, z11, str3, str2);
    }

    @NotNull
    public final List<RedeemCodeEquity> component1() {
        return this.equity;
    }

    public final int component2() {
        return this.status;
    }

    public final int component3() {
        return this.shortPlayId;
    }

    public final boolean component4() {
        return this.collectShort;
    }

    @NotNull
    public final String component5() {
        return this.shortPlayCode;
    }

    @NotNull
    public final String component6() {
        return this.upack;
    }

    @NotNull
    public final RedeemCode copy(@NotNull List<RedeemCodeEquity> equity, int i10, int i11, boolean z10, @NotNull String shortPlayCode, @NotNull String upack) {
        Intrinsics.checkNotNullParameter(equity, "equity");
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        Intrinsics.checkNotNullParameter(upack, "upack");
        return new RedeemCode(equity, i10, i11, z10, shortPlayCode, upack);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RedeemCode)) {
            return false;
        }
        RedeemCode redeemCode = (RedeemCode) obj;
        if (Intrinsics.areEqual(this.equity, redeemCode.equity) && this.status == redeemCode.status && this.shortPlayId == redeemCode.shortPlayId && this.collectShort == redeemCode.collectShort && Intrinsics.areEqual(this.shortPlayCode, redeemCode.shortPlayCode) && Intrinsics.areEqual(this.upack, redeemCode.upack)) {
            return true;
        }
        return false;
    }

    public final boolean getCollectShort() {
        return this.collectShort;
    }

    @NotNull
    public final List<RedeemCodeEquity> getEquity() {
        return this.equity;
    }

    @NotNull
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getUpack() {
        return this.upack;
    }

    public int hashCode() {
        return (((((((((this.equity.hashCode() * 31) + Integer.hashCode(this.status)) * 31) + Integer.hashCode(this.shortPlayId)) * 31) + Boolean.hashCode(this.collectShort)) * 31) + this.shortPlayCode.hashCode()) * 31) + this.upack.hashCode();
    }

    public final void setUpack(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.upack = str;
    }

    @NotNull
    public String toString() {
        return "RedeemCode(equity=" + this.equity + ", status=" + this.status + ", shortPlayId=" + this.shortPlayId + ", collectShort=" + this.collectShort + ", shortPlayCode=" + this.shortPlayCode + ", upack=" + this.upack + ')';
    }

    public /* synthetic */ RedeemCode(List list, int i10, int i11, boolean z10, String str, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, i10, i11, z10, str, (i12 & 32) != 0 ? "" : str2);
    }
}
