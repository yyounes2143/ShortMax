package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: NestedScrollModifier.kt */
@Metadata
/* loaded from: classes.dex */
public interface NestedScrollConnection {

    /* compiled from: NestedScrollModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        @Nullable
        /* renamed from: onPostFling-RZ2iAVY  reason: not valid java name */
        public static Object m3093onPostFlingRZ2iAVY(@NotNull NestedScrollConnection nestedScrollConnection, long j10, long j11, @NotNull c<? super Velocity> cVar) {
            return NestedScrollConnection.super.mo347onPostFlingRZ2iAVY(j10, j11, cVar);
        }

        @Deprecated
        /* renamed from: onPostScroll-DzOQY0M  reason: not valid java name */
        public static long m3094onPostScrollDzOQY0M(@NotNull NestedScrollConnection nestedScrollConnection, long j10, long j11, int i10) {
            return NestedScrollConnection.super.mo348onPostScrollDzOQY0M(j10, j11, i10);
        }

        @Deprecated
        @Nullable
        /* renamed from: onPreFling-QWom1Mo  reason: not valid java name */
        public static Object m3095onPreFlingQWom1Mo(@NotNull NestedScrollConnection nestedScrollConnection, long j10, @NotNull c<? super Velocity> cVar) {
            return NestedScrollConnection.super.mo509onPreFlingQWom1Mo(j10, cVar);
        }

        @Deprecated
        /* renamed from: onPreScroll-OzD1aCk  reason: not valid java name */
        public static long m3096onPreScrollOzD1aCk(@NotNull NestedScrollConnection nestedScrollConnection, long j10, int i10) {
            return NestedScrollConnection.super.mo510onPreScrollOzD1aCk(j10, i10);
        }
    }

    /* renamed from: onPostFling-RZ2iAVY$suspendImpl  reason: not valid java name */
    static /* synthetic */ Object m3091onPostFlingRZ2iAVY$suspendImpl(NestedScrollConnection nestedScrollConnection, long j10, long j11, c cVar) {
        return Velocity.m4265boximpl(Velocity.Companion.m4285getZero9UxMQ8M());
    }

    /* renamed from: onPreFling-QWom1Mo$suspendImpl  reason: not valid java name */
    static /* synthetic */ Object m3092onPreFlingQWom1Mo$suspendImpl(NestedScrollConnection nestedScrollConnection, long j10, c cVar) {
        return Velocity.m4265boximpl(Velocity.Companion.m4285getZero9UxMQ8M());
    }

    @Nullable
    /* renamed from: onPostFling-RZ2iAVY */
    default Object mo347onPostFlingRZ2iAVY(long j10, long j11, @NotNull c<? super Velocity> cVar) {
        return m3091onPostFlingRZ2iAVY$suspendImpl(this, j10, j11, cVar);
    }

    /* renamed from: onPostScroll-DzOQY0M */
    default long mo348onPostScrollDzOQY0M(long j10, long j11, int i10) {
        return Offset.Companion.m1622getZeroF1C5BW0();
    }

    @Nullable
    /* renamed from: onPreFling-QWom1Mo */
    default Object mo509onPreFlingQWom1Mo(long j10, @NotNull c<? super Velocity> cVar) {
        return m3092onPreFlingQWom1Mo$suspendImpl(this, j10, cVar);
    }

    /* renamed from: onPreScroll-OzD1aCk */
    default long mo510onPreScrollOzD1aCk(long j10, int i10) {
        return Offset.Companion.m1622getZeroF1C5BW0();
    }
}
