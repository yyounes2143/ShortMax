package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: RecomposeScopeImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecomposeScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImplKt\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,442:1\n25#2,5:443\n*S KotlinDebug\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImplKt\n*L\n77#1:443,5\n*E\n"})
/* loaded from: classes.dex */
public final class RecomposeScopeImplKt {
    private static final int DefaultsInScopeFlag = 2;
    private static final int DefaultsInvalidFlag = 4;
    private static final int ForceReusing = 128;
    private static final int ForcedRecomposeFlag = 64;
    private static final int Paused = 256;
    private static final int RequiresRecomposeFlag = 8;
    private static final int RereadingFlag = 32;
    private static final int ResetReusing = 1024;
    private static final int Resuming = 512;
    private static final int SkippedFlag = 16;
    private static final int UsedFlag = 1;
    @NotNull
    private static final Object callbackLock = new Object();
    private static final int changedHighBitMask = 613566756;
    private static final int changedLowBitMask = 306783378;
    private static final int changedMask = -920350135;

    public static final int updateChangedFlags(int i10) {
        int i11 = changedLowBitMask & i10;
        int i12 = changedHighBitMask & i10;
        return (i10 & changedMask) | (i12 >> 1) | i11 | ((i11 << 1) & i12);
    }
}
