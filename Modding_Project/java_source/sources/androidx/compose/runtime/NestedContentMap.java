package androidx.compose.runtime;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.compose.runtime.collection.MultiValueMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Recomposer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/NestedContentMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MultiValueMap.kt\nandroidx/compose/runtime/collection/MultiValueMap\n+ 4 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,1894:1\n1#2:1895\n118#3,4:1896\n123#3,4:1906\n287#4,6:1900\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/NestedContentMap\n*L\n1883#1:1896,4\n1883#1:1906,4\n1883#1:1900,6\n*E\n"})
/* loaded from: classes.dex */
public final class NestedContentMap {
    @NotNull
    private final MutableScatterMap<Object, Object> contentMap = MultiValueMap.m1455constructorimpl$default(null, 1, null);
    @NotNull
    private final MutableScatterMap<Object, Object> containerMap = MultiValueMap.m1455constructorimpl$default(null, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean usedContainer$lambda$2$lambda$1(MovableContentStateReference movableContentStateReference, NestedMovableContent nestedMovableContent) {
        return Intrinsics.areEqual(nestedMovableContent.getContainer(), movableContentStateReference);
    }

    public final void add(@NotNull MovableContent<Object> movableContent, @NotNull NestedMovableContent nestedMovableContent) {
        MultiValueMap.m1451addimpl(this.contentMap, movableContent, nestedMovableContent);
        MultiValueMap.m1451addimpl(this.containerMap, nestedMovableContent.getContainer(), movableContent);
    }

    public final void clear() {
        MultiValueMap.m1453clearimpl(this.contentMap);
        MultiValueMap.m1453clearimpl(this.containerMap);
    }

    public final boolean contains(@NotNull MovableContent<Object> movableContent) {
        return MultiValueMap.m1456containsimpl(this.contentMap, movableContent);
    }

    @Nullable
    public final NestedMovableContent removeLast(@NotNull MovableContent<Object> movableContent) {
        NestedMovableContent nestedMovableContent = (NestedMovableContent) MultiValueMap.m1465removeLastimpl(this.contentMap, movableContent);
        if (MultiValueMap.m1462isEmptyimpl(this.contentMap)) {
            MultiValueMap.m1453clearimpl(this.containerMap);
        }
        return nestedMovableContent;
    }

    public final void usedContainer(@NotNull final MovableContentStateReference movableContentStateReference) {
        Object obj = this.containerMap.get(movableContentStateReference);
        if (obj != null) {
            if (obj instanceof MutableObjectList) {
                ObjectList objectList = (ObjectList) obj;
                Object[] objArr = objectList.content;
                int i10 = objectList._size;
                for (int i11 = 0; i11 < i10; i11++) {
                    Object obj2 = objArr[i11];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap");
                    MultiValueMap.m1466removeValueIfimpl(this.contentMap, (MovableContent) obj2, new Function1() { // from class: androidx.compose.runtime.q
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            boolean usedContainer$lambda$2$lambda$1;
                            usedContainer$lambda$2$lambda$1 = NestedContentMap.usedContainer$lambda$2$lambda$1(MovableContentStateReference.this, (NestedMovableContent) obj3);
                            return Boolean.valueOf(usedContainer$lambda$2$lambda$1);
                        }
                    });
                }
                return;
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap");
            MultiValueMap.m1466removeValueIfimpl(this.contentMap, (MovableContent) obj, new Function1() { // from class: androidx.compose.runtime.q
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3) {
                    boolean usedContainer$lambda$2$lambda$1;
                    usedContainer$lambda$2$lambda$1 = NestedContentMap.usedContainer$lambda$2$lambda$1(MovableContentStateReference.this, (NestedMovableContent) obj3);
                    return Boolean.valueOf(usedContainer$lambda$2$lambda$1);
                }
            });
        }
    }
}
