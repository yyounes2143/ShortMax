package com.shorttv.aar.billing.core;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: SubscriptionUpdateMode.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubscriptionUpdateMode {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ SubscriptionUpdateMode[] $VALUES;
    public static final SubscriptionUpdateMode UNKNOWN_REPLACEMENT_MODE = new SubscriptionUpdateMode("UNKNOWN_REPLACEMENT_MODE", 0);
    public static final SubscriptionUpdateMode WITH_TIME_PRORATION = new SubscriptionUpdateMode("WITH_TIME_PRORATION", 1);
    public static final SubscriptionUpdateMode CHARGE_PRORATED_PRICE = new SubscriptionUpdateMode("CHARGE_PRORATED_PRICE", 2);
    public static final SubscriptionUpdateMode WITHOUT_PRORATION = new SubscriptionUpdateMode("WITHOUT_PRORATION", 3);
    public static final SubscriptionUpdateMode CHARGE_FULL_PRICE = new SubscriptionUpdateMode("CHARGE_FULL_PRICE", 4);
    public static final SubscriptionUpdateMode DEFERRED = new SubscriptionUpdateMode("DEFERRED", 5);
    public static final SubscriptionUpdateMode NULL = new SubscriptionUpdateMode("NULL", 6);

    /* compiled from: SubscriptionUpdateMode.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SubscriptionUpdateMode.values().length];
            try {
                iArr[SubscriptionUpdateMode.UNKNOWN_REPLACEMENT_MODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SubscriptionUpdateMode.WITH_TIME_PRORATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SubscriptionUpdateMode.CHARGE_PRORATED_PRICE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SubscriptionUpdateMode.WITHOUT_PRORATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SubscriptionUpdateMode.CHARGE_FULL_PRICE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SubscriptionUpdateMode.DEFERRED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SubscriptionUpdateMode.NULL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ SubscriptionUpdateMode[] $values() {
        return new SubscriptionUpdateMode[]{UNKNOWN_REPLACEMENT_MODE, WITH_TIME_PRORATION, CHARGE_PRORATED_PRICE, WITHOUT_PRORATION, CHARGE_FULL_PRICE, DEFERRED, NULL};
    }

    static {
        SubscriptionUpdateMode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private SubscriptionUpdateMode(String str, int i10) {
    }

    @NotNull
    public static ss.a<SubscriptionUpdateMode> getEntries() {
        return $ENTRIES;
    }

    public static SubscriptionUpdateMode valueOf(String str) {
        return (SubscriptionUpdateMode) Enum.valueOf(SubscriptionUpdateMode.class, str);
    }

    public static SubscriptionUpdateMode[] values() {
        return (SubscriptionUpdateMode[]) $VALUES.clone();
    }

    public final int covertToGoogleMode() {
        switch (a.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return -1;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
