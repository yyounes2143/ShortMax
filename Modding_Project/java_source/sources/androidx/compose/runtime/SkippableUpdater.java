package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composer.kt */
@Metadata
/* loaded from: classes.dex */
public final class SkippableUpdater<T> {
    @NotNull
    private final Composer composer;

    private /* synthetic */ SkippableUpdater(Composer composer) {
        this.composer = composer;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ SkippableUpdater m1349boximpl(Composer composer) {
        return new SkippableUpdater(composer);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1351equalsimpl(Composer composer, Object obj) {
        if (!(obj instanceof SkippableUpdater) || !Intrinsics.areEqual(composer, ((SkippableUpdater) obj).m1356unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1352equalsimpl0(Composer composer, Composer composer2) {
        return Intrinsics.areEqual(composer, composer2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1353hashCodeimpl(Composer composer) {
        return composer.hashCode();
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1354toStringimpl(Composer composer) {
        return "SkippableUpdater(composer=" + composer + ')';
    }

    /* renamed from: update-impl  reason: not valid java name */
    public static final void m1355updateimpl(Composer composer, @NotNull Function1<? super Updater<T>, Unit> function1) {
        composer.startReplaceableGroup(509942095);
        function1.invoke(Updater.m1375boximpl(Updater.m1376constructorimpl(composer)));
        composer.endReplaceableGroup();
    }

    public boolean equals(Object obj) {
        return m1351equalsimpl(this.composer, obj);
    }

    public int hashCode() {
        return m1353hashCodeimpl(this.composer);
    }

    public String toString() {
        return m1354toStringimpl(this.composer);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Composer m1356unboximpl() {
        return this.composer;
    }

    public static /* synthetic */ void getComposer$annotations() {
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static <T> Composer m1350constructorimpl(@NotNull Composer composer) {
        return composer;
    }
}
