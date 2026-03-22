package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
/* compiled from: PointerEvent.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerEvent_androidKt {
    /* renamed from: getAreAnyPressed-aHzCx-E  reason: not valid java name */
    public static final boolean m3173getAreAnyPressedaHzCxE(int i10) {
        if (i10 != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: indexOfFirstPressed-aHzCx-E  reason: not valid java name */
    public static final int m3174indexOfFirstPressedaHzCxE(int i10) {
        if (i10 == 0) {
            return -1;
        }
        int i11 = 0;
        for (int i12 = (i10 & (-97)) | ((i10 & 96) >>> 5); (i12 & 1) == 0; i12 >>>= 1) {
            i11++;
        }
        return i11;
    }

    /* renamed from: indexOfLastPressed-aHzCx-E  reason: not valid java name */
    public static final int m3175indexOfLastPressedaHzCxE(int i10) {
        int i11 = -1;
        for (int i12 = (i10 & (-97)) | ((i10 & 96) >>> 5); i12 != 0; i12 >>>= 1) {
            i11++;
        }
        return i11;
    }

    /* renamed from: isAltGraphPressed-5xRPYO0  reason: not valid java name */
    public static final boolean m3176isAltGraphPressed5xRPYO0(int i10) {
        return false;
    }

    /* renamed from: isAltPressed-5xRPYO0  reason: not valid java name */
    public static final boolean m3177isAltPressed5xRPYO0(int i10) {
        if ((i10 & 2) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isBackPressed-aHzCx-E  reason: not valid java name */
    public static final boolean m3178isBackPressedaHzCxE(int i10) {
        if ((i10 & 8) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isCapsLockOn-5xRPYO0  reason: not valid java name */
    public static final boolean m3179isCapsLockOn5xRPYO0(int i10) {
        if ((i10 & 1048576) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isCtrlPressed-5xRPYO0  reason: not valid java name */
    public static final boolean m3180isCtrlPressed5xRPYO0(int i10) {
        if ((i10 & 4096) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isForwardPressed-aHzCx-E  reason: not valid java name */
    public static final boolean m3181isForwardPressedaHzCxE(int i10) {
        if ((i10 & 16) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isFunctionPressed-5xRPYO0  reason: not valid java name */
    public static final boolean m3182isFunctionPressed5xRPYO0(int i10) {
        if ((i10 & 8) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isMetaPressed-5xRPYO0  reason: not valid java name */
    public static final boolean m3183isMetaPressed5xRPYO0(int i10) {
        if ((i10 & 65536) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isNumLockOn-5xRPYO0  reason: not valid java name */
    public static final boolean m3184isNumLockOn5xRPYO0(int i10) {
        if ((i10 & 2097152) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isPressed-bNIWhpI  reason: not valid java name */
    public static final boolean m3185isPressedbNIWhpI(int i10, int i11) {
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2 && i11 != 3 && i11 != 4) {
                    if ((i10 & (1 << (i11 + 2))) != 0) {
                        return true;
                    }
                } else if ((i10 & (1 << i11)) != 0) {
                    return true;
                }
                return false;
            }
            return m3188isSecondaryPressedaHzCxE(i10);
        }
        return m3186isPrimaryPressedaHzCxE(i10);
    }

    /* renamed from: isPrimaryPressed-aHzCx-E  reason: not valid java name */
    public static final boolean m3186isPrimaryPressedaHzCxE(int i10) {
        if ((i10 & 33) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isScrollLockOn-5xRPYO0  reason: not valid java name */
    public static final boolean m3187isScrollLockOn5xRPYO0(int i10) {
        if ((i10 & 4194304) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isSecondaryPressed-aHzCx-E  reason: not valid java name */
    public static final boolean m3188isSecondaryPressedaHzCxE(int i10) {
        if ((i10 & 66) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isShiftPressed-5xRPYO0  reason: not valid java name */
    public static final boolean m3189isShiftPressed5xRPYO0(int i10) {
        if ((i10 & 1) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isSymPressed-5xRPYO0  reason: not valid java name */
    public static final boolean m3190isSymPressed5xRPYO0(int i10) {
        if ((i10 & 4) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isTertiaryPressed-aHzCx-E  reason: not valid java name */
    public static final boolean m3191isTertiaryPressedaHzCxE(int i10) {
        if ((i10 & 4) != 0) {
            return true;
        }
        return false;
    }
}
