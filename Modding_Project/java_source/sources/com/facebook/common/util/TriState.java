package com.facebook.common.util;
/* loaded from: classes3.dex */
public enum TriState {
    YES,
    NO,
    UNSET;

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15330a;

        static {
            int[] iArr = new int[TriState.values().length];
            f15330a = iArr;
            try {
                iArr[TriState.YES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15330a[TriState.NO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15330a[TriState.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static TriState fromDbValue(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return UNSET;
            }
            return NO;
        }
        return YES;
    }

    public boolean asBoolean() {
        int i10 = a.f15330a[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    throw new IllegalStateException("Unrecognized TriState value: " + this);
                }
                throw new IllegalStateException("No boolean equivalent for UNSET");
            }
            return false;
        }
        return true;
    }

    public Boolean asBooleanObject() {
        int i10 = a.f15330a[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return null;
                }
                throw new IllegalStateException("Unrecognized TriState value: " + this);
            }
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    public int getDbValue() {
        int i10 = a.f15330a[ordinal()];
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2) {
                return 3;
            }
        }
        return i11;
    }

    public boolean isSet() {
        if (this != UNSET) {
            return true;
        }
        return false;
    }

    public static TriState valueOf(boolean z10) {
        return z10 ? YES : NO;
    }

    public static TriState valueOf(Boolean bool) {
        return bool != null ? valueOf(bool.booleanValue()) : UNSET;
    }

    public boolean asBoolean(boolean z10) {
        int i10 = a.f15330a[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return z10;
                }
                throw new IllegalStateException("Unrecognized TriState value: " + this);
            }
            return false;
        }
        return true;
    }
}
