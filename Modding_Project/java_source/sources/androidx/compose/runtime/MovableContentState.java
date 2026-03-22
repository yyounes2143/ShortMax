package androidx.compose.runtime;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.collection.ExtensionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composer.kt */
@StabilityInferred(parameters = 0)
@Metadata
@InternalComposeApi
@SourceDebugExtension({"SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/MovableContentState\n+ 2 Extensions.kt\nandroidx/compose/runtime/collection/ExtensionsKt\n+ 3 ObjectList.kt\nandroidx/collection/ObjectList\n+ 4 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 5 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5012:1\n29#2,8:5013\n37#2:5027\n287#3,6:5021\n287#3,6:5034\n919#4,2:5028\n175#5,4:5030\n180#5,3:5041\n1#6:5040\n4788#7,4:5044\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/MovableContentState\n*L\n423#1:5013,8\n423#1:5027\n423#1:5021,6\n446#1:5034,6\n423#1:5028,2\n427#1:5030,4\n427#1:5041,3\n427#1:5040\n443#1:5044,4\n*E\n"})
/* loaded from: classes.dex */
public final class MovableContentState {
    public static final int $stable = 8;
    @NotNull
    private final SlotTable slotTable;

    public MovableContentState(@NotNull SlotTable slotTable) {
        this.slotTable = slotTable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer extractNestedStates$lambda$1(MovableContentState movableContentState, MovableContentStateReference movableContentStateReference) {
        return Integer.valueOf(movableContentState.slotTable.anchorIndex(movableContentStateReference.getAnchor$runtime()));
    }

    private static final void extractNestedStates$lambda$4$closeToGroupContaining(SlotWriter slotWriter, int i10) {
        while (slotWriter.getParent() >= 0 && slotWriter.getCurrentGroupEnd() <= i10) {
            slotWriter.skipToGroupEnd();
            slotWriter.endGroup();
        }
    }

    private static final void extractNestedStates$lambda$4$openParent(SlotWriter slotWriter, int i10) {
        boolean z10;
        int nextGroup;
        extractNestedStates$lambda$4$closeToGroupContaining(slotWriter, i10);
        while (slotWriter.getCurrentGroup() != i10 && !slotWriter.isGroupEnd()) {
            nextGroup = ComposerKt.getNextGroup(slotWriter);
            if (i10 < nextGroup) {
                slotWriter.startGroup();
            } else {
                slotWriter.skipGroup();
            }
        }
        if (slotWriter.getCurrentGroup() == i10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Unexpected slot table structure");
        }
        slotWriter.startGroup();
    }

    @NotNull
    public final ScatterMap<MovableContentStateReference, MovableContentState> extractNestedStates$runtime(@NotNull Applier<?> applier, @NotNull ObjectList<MovableContentStateReference> objectList) {
        Object[] objArr = objectList.content;
        int i10 = objectList._size;
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            } else if (!this.slotTable.ownsAnchor(((MovableContentStateReference) objArr[i11]).getAnchor$runtime())) {
                MutableObjectList mutableObjectList = new MutableObjectList(0, 1, null);
                Object[] objArr2 = objectList.content;
                int i12 = objectList._size;
                for (int i13 = 0; i13 < i12; i13++) {
                    Object obj = objArr2[i13];
                    if (this.slotTable.ownsAnchor(((MovableContentStateReference) obj).getAnchor$runtime())) {
                        mutableObjectList.add(obj);
                    }
                }
                objectList = mutableObjectList;
            } else {
                i11++;
            }
        }
        ObjectList sortedBy = ExtensionsKt.sortedBy(objectList, new Function1() { // from class: androidx.compose.runtime.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                Integer extractNestedStates$lambda$1;
                extractNestedStates$lambda$1 = MovableContentState.extractNestedStates$lambda$1(MovableContentState.this, (MovableContentStateReference) obj2);
                return extractNestedStates$lambda$1;
            }
        });
        if (sortedBy.isEmpty()) {
            return ScatterMapKt.emptyScatterMap();
        }
        MutableScatterMap mutableScatterMapOf = ScatterMapKt.mutableScatterMapOf();
        SlotWriter openWriter = this.slotTable.openWriter();
        try {
            Object[] objArr3 = sortedBy.content;
            int i14 = sortedBy._size;
            for (int i15 = 0; i15 < i14; i15++) {
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr3[i15];
                int anchorIndex = openWriter.anchorIndex(movableContentStateReference.getAnchor$runtime());
                int parent = openWriter.parent(anchorIndex);
                extractNestedStates$lambda$4$closeToGroupContaining(openWriter, parent);
                extractNestedStates$lambda$4$openParent(openWriter, parent);
                openWriter.advanceBy(anchorIndex - openWriter.getCurrentGroup());
                mutableScatterMapOf.set(movableContentStateReference, ComposerKt.extractMovableContentAtCurrent(movableContentStateReference.getComposition$runtime(), movableContentStateReference, openWriter, applier));
            }
            extractNestedStates$lambda$4$closeToGroupContaining(openWriter, Integer.MAX_VALUE);
            Unit unit = Unit.f60915a;
            openWriter.close(true);
            return mutableScatterMapOf;
        } catch (Throwable th2) {
            openWriter.close(false);
            throw th2;
        }
    }

    @NotNull
    public final SlotTable getSlotTable$runtime() {
        return this.slotTable;
    }
}
