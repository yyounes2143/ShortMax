package androidx.room.util;

import androidx.room.RoomDatabase;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: DBUtil.android.kt */
@Metadata
@d(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1", f = "DBUtil.android.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDBUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$compatCoroutineExecute$2\n+ 2 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n+ 3 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n1#1,259:1\n54#2:260\n57#2:263\n48#3:261\n67#3:262\n*S KotlinDebug\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n*L\n54#1:261\n54#1:262\n*E\n"})
/* loaded from: classes2.dex */
public final class DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1<R> extends SuspendLambda implements Function2<g0, c<? super R>, Object> {
    final /* synthetic */ Function1 $block$inlined;
    final /* synthetic */ RoomDatabase $db$inlined;
    final /* synthetic */ boolean $inTransaction$inlined;
    final /* synthetic */ boolean $isReadOnly$inlined;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(c cVar, RoomDatabase roomDatabase, boolean z10, boolean z11, Function1 function1) {
        super(2, cVar);
        this.$db$inlined = roomDatabase;
        this.$isReadOnly$inlined = z10;
        this.$inTransaction$inlined = z11;
        this.$block$inlined = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(cVar, this.$db$inlined, this.$isReadOnly$inlined, this.$inTransaction$inlined, this.$block$inlined);
    }

    public final Object invoke(g0 g0Var, c<? super R> cVar) {
        return ((DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            RoomDatabase roomDatabase = this.$db$inlined;
            boolean z10 = this.$isReadOnly$inlined;
            DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(this.$inTransaction$inlined, z10, roomDatabase, null, this.$block$inlined);
            this.label = 1;
            obj = roomDatabase.useConnection(z10, dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
