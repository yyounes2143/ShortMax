package androidx.compose.foundation;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Overscroll.kt */
@Stable
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public interface OverscrollEffect {
    @Nullable
    /* renamed from: consumePostFling-sF-c-tU */
    Object mo192consumePostFlingsFctU(long j10, @NotNull c<? super Unit> cVar);

    /* renamed from: consumePostScroll-l7mfB5k */
    void mo193consumePostScrolll7mfB5k(long j10, long j11, @Nullable Offset offset, int i10);

    @Nullable
    /* renamed from: consumePreFling-QWom1Mo */
    Object mo194consumePreFlingQWom1Mo(long j10, @NotNull c<? super Velocity> cVar);

    /* renamed from: consumePreScroll-A0NYTsA */
    long mo195consumePreScrollA0NYTsA(long j10, @Nullable Offset offset, int i10);

    @NotNull
    Modifier getEffectModifier();

    boolean isEnabled();

    boolean isInProgress();

    void setEnabled(boolean z10);
}
