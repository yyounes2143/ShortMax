package androidx.room;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RoomDatabase.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final /* synthetic */ class RoomDatabase$closeBarrier$1 extends FunctionReferenceImpl implements Function0<Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public RoomDatabase$closeBarrier$1(Object obj) {
        super(0, obj, RoomDatabase.class, "onClosed", "onClosed()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((RoomDatabase) this.receiver).onClosed();
    }
}
