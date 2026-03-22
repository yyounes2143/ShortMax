package androidx.collection;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.i;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: ScatterMap.kt */
@Metadata
@d(c = "androidx.collection.Entries$iterator$1", f = "ScatterMap.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_ENABLE_CLEAR_TEXTUREREF_ASYNC}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/Entries$iterator$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1787:1\n329#2,6:1788\n339#2,3:1795\n342#2,9:1799\n1399#3:1794\n1270#3:1798\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/Entries$iterator$1\n*L\n1412#1:1788,6\n1412#1:1795,3\n1412#1:1799,9\n1412#1:1794\n1412#1:1798\n*E\n"})
/* loaded from: classes.dex */
final class Entries$iterator$1<K, V> extends RestrictedSuspendLambda implements Function2<i<? super Map.Entry<? extends K, ? extends V>>, c<? super Unit>, Object> {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ Entries<K, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Entries$iterator$1(Entries<K, V> entries, c<? super Entries$iterator$1> cVar) {
        super(2, cVar);
        this.this$0 = entries;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        Entries$iterator$1 entries$iterator$1 = new Entries$iterator$1(this.this$0, cVar);
        entries$iterator$1.L$0 = obj;
        return entries$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Unit> cVar) {
        return invoke((i) ((i) obj), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0059 -> B:14:0x006a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00a3 -> B:20:0x00a6). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00a9 -> B:22:0x00aa). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00b6 -> B:27:0x00b7). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.Entries$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public final Object invoke(i<? super Map.Entry<? extends K, ? extends V>> iVar, c<? super Unit> cVar) {
        return ((Entries$iterator$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
