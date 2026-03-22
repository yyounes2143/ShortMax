package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composer.kt */
@Metadata
/* loaded from: classes.dex */
public final class Updater<T> {
    @NotNull
    private final Composer composer;

    private /* synthetic */ Updater(Composer composer) {
        this.composer = composer;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Updater m1375boximpl(Composer composer) {
        return new Updater(composer);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1377equalsimpl(Composer composer, Object obj) {
        if (!(obj instanceof Updater) || !Intrinsics.areEqual(composer, ((Updater) obj).m1387unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1378equalsimpl0(Composer composer, Composer composer2) {
        return Intrinsics.areEqual(composer, composer2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1379hashCodeimpl(Composer composer) {
        return composer.hashCode();
    }

    /* renamed from: init-impl  reason: not valid java name */
    public static final void m1380initimpl(Composer composer, @NotNull final Function1<? super T, Unit> function1) {
        if (composer.getInserting()) {
            composer.apply(Unit.f60915a, new Function2() { // from class: androidx.compose.runtime.j0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit init_impl$lambda$4;
                    init_impl$lambda$4 = Updater.init_impl$lambda$4(Function1.this, obj, (Unit) obj2);
                    return init_impl$lambda$4;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit init_impl$lambda$4(Function1 function1, Object obj, Unit unit) {
        function1.invoke(obj);
        return Unit.f60915a;
    }

    /* renamed from: reconcile-impl  reason: not valid java name */
    public static final void m1381reconcileimpl(Composer composer, @NotNull final Function1<? super T, Unit> function1) {
        composer.apply(Unit.f60915a, new Function2() { // from class: androidx.compose.runtime.k0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit reconcile_impl$lambda$5;
                reconcile_impl$lambda$5 = Updater.reconcile_impl$lambda$5(Function1.this, obj, (Unit) obj2);
                return reconcile_impl$lambda$5;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reconcile_impl$lambda$5(Function1 function1, Object obj, Unit unit) {
        function1.invoke(obj);
        return Unit.f60915a;
    }

    /* renamed from: set-impl  reason: not valid java name */
    public static final void m1382setimpl(Composer composer, int i10, @NotNull Function2<? super T, ? super Integer, Unit> function2) {
        if (composer.getInserting() || !Intrinsics.areEqual(composer.rememberedValue(), Integer.valueOf(i10))) {
            composer.updateRememberedValue(Integer.valueOf(i10));
            composer.apply(Integer.valueOf(i10), function2);
        }
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1384toStringimpl(Composer composer) {
        return "Updater(composer=" + composer + ')';
    }

    /* renamed from: update-impl  reason: not valid java name */
    public static final void m1385updateimpl(Composer composer, int i10, @NotNull Function2<? super T, ? super Integer, Unit> function2) {
        boolean inserting = composer.getInserting();
        if (inserting || !Intrinsics.areEqual(composer.rememberedValue(), Integer.valueOf(i10))) {
            composer.updateRememberedValue(Integer.valueOf(i10));
            if (inserting) {
                return;
            }
            composer.apply(Integer.valueOf(i10), function2);
        }
    }

    public boolean equals(Object obj) {
        return m1377equalsimpl(this.composer, obj);
    }

    public int hashCode() {
        return m1379hashCodeimpl(this.composer);
    }

    public String toString() {
        return m1384toStringimpl(this.composer);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Composer m1387unboximpl() {
        return this.composer;
    }

    /* renamed from: set-impl  reason: not valid java name */
    public static final <V> void m1383setimpl(Composer composer, V v10, @NotNull Function2<? super T, ? super V, Unit> function2) {
        if (composer.getInserting() || !Intrinsics.areEqual(composer.rememberedValue(), v10)) {
            composer.updateRememberedValue(v10);
            composer.apply(v10, function2);
        }
    }

    /* renamed from: update-impl  reason: not valid java name */
    public static final <V> void m1386updateimpl(Composer composer, V v10, @NotNull Function2<? super T, ? super V, Unit> function2) {
        boolean inserting = composer.getInserting();
        if (inserting || !Intrinsics.areEqual(composer.rememberedValue(), v10)) {
            composer.updateRememberedValue(v10);
            if (inserting) {
                return;
            }
            composer.apply(v10, function2);
        }
    }

    public static /* synthetic */ void getComposer$annotations() {
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static <T> Composer m1376constructorimpl(@NotNull Composer composer) {
        return composer;
    }
}
