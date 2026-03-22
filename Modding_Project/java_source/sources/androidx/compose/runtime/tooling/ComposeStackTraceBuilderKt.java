package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.ComposerImpl;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.SlotReader;
import androidx.compose.runtime.SlotTable;
import androidx.compose.runtime.SlotWriter;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposeStackTraceBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nComposeStackTraceBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeStackTraceBuilder.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n1#1,311:1\n159#2,7:312\n159#2,7:319\n*S KotlinDebug\n*F\n+ 1 ComposeStackTraceBuilder.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt\n*L\n260#1:312,7\n282#1:319,7\n*E\n"})
/* loaded from: classes.dex */
public final class ComposeStackTraceBuilderKt {
    @NotNull
    public static final List<ComposeStackTraceFrame> buildTrace(@NotNull SlotWriter slotWriter, @Nullable Object obj, int i10, @Nullable Integer num) {
        int parent;
        if (!slotWriter.getClosed() && slotWriter.getSize$runtime() != 0) {
            WriterTraceBuilder writerTraceBuilder = new WriterTraceBuilder(slotWriter);
            if (num != null) {
                parent = num.intValue();
            } else {
                parent = slotWriter.getParent() < 0 ? slotWriter.parent(i10) : slotWriter.getParent();
            }
            if (obj == null) {
                obj = Integer.valueOf(slotWriter.groupSlotIndex(i10));
            }
            while (i10 >= 0) {
                writerTraceBuilder.processEdge(slotWriter.sourceInformationOf$runtime(i10), obj);
                obj = slotWriter.anchor(i10);
                if (parent >= 0) {
                    int i11 = parent;
                    parent = slotWriter.parent(parent);
                    i10 = i11;
                } else {
                    i10 = parent;
                }
            }
            return writerTraceBuilder.trace();
        }
        return CollectionsKt.n();
    }

    public static /* synthetic */ List buildTrace$default(SlotWriter slotWriter, Object obj, int i10, Integer num, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            obj = null;
        }
        if ((i11 & 2) != 0) {
            i10 = slotWriter.getCurrentGroup();
        }
        if ((i11 & 4) != 0) {
            num = null;
        }
        return buildTrace(slotWriter, obj, i10, num);
    }

    @Nullable
    public static final ObjectLocation findLocation(@NotNull SlotTable slotTable, @NotNull Function1<Object, Boolean> function1) {
        SlotReader openReader = slotTable.openReader();
        try {
            Ref.IntRef intRef = new Ref.IntRef();
            while (intRef.element < slotTable.getGroupsSize()) {
                if (openReader.isNode(intRef.element) && function1.invoke(openReader.node(intRef.element)).booleanValue()) {
                    return new ObjectLocation(intRef.element, null);
                }
                int slotSize = openReader.slotSize(intRef.element);
                for (int i10 = 0; i10 < slotSize; i10++) {
                    if (function1.invoke(openReader.groupGet(intRef.element, i10)).booleanValue()) {
                        return new ObjectLocation(intRef.element, Integer.valueOf(i10));
                    }
                }
                intRef.element++;
            }
            Unit unit = Unit.f60915a;
            return null;
        } finally {
            openReader.close();
        }
    }

    @Nullable
    public static final Integer findSubcompositionContextGroup(@NotNull SlotTable slotTable, @NotNull CompositionContext compositionContext) {
        SlotReader openReader = slotTable.openReader();
        try {
            return findSubcompositionContextGroup$lambda$3$scanGroup(openReader, compositionContext, 0, openReader.getSize());
        } finally {
            openReader.close();
        }
    }

    private static final Integer findSubcompositionContextGroup$lambda$3$scanGroup(SlotReader slotReader, CompositionContext compositionContext, int i10, int i11) {
        Integer findSubcompositionContextGroup$lambda$3$scanGroup;
        while (true) {
            ComposerImpl.CompositionContextHolder compositionContextHolder = null;
            if (i10 >= i11) {
                return null;
            }
            int groupSize = slotReader.groupSize(i10) + i10;
            if (slotReader.hasMark(i10) && slotReader.groupKey(i10) == 206 && Intrinsics.areEqual(slotReader.groupObjectKey(i10), ComposerKt.getReference())) {
                Object groupGet = slotReader.groupGet(i10, 0);
                if (groupGet instanceof ComposerImpl.CompositionContextHolder) {
                    compositionContextHolder = (ComposerImpl.CompositionContextHolder) groupGet;
                }
                if (compositionContextHolder != null && Intrinsics.areEqual(compositionContextHolder.getRef(), compositionContext)) {
                    return Integer.valueOf(i10);
                }
            }
            if (slotReader.containsMark(i10) && (findSubcompositionContextGroup$lambda$3$scanGroup = findSubcompositionContextGroup$lambda$3$scanGroup(slotReader, compositionContext, i10 + 1, groupSize)) != null) {
                return Integer.valueOf(findSubcompositionContextGroup$lambda$3$scanGroup.intValue());
            }
            i10 = groupSize;
        }
    }

    @NotNull
    public static final List<ComposeStackTraceFrame> traceForGroup(@NotNull SlotReader slotReader, int i10, @Nullable Object obj) {
        ReaderTraceBuilder readerTraceBuilder = new ReaderTraceBuilder(slotReader);
        int parent = slotReader.parent(i10);
        Anchor anchor = slotReader.anchor(i10);
        while (i10 >= 0) {
            readerTraceBuilder.processEdge(slotReader.getTable$runtime().sourceInformationOf(i10), obj);
            if (parent >= 0) {
                Anchor anchor2 = anchor;
                anchor = slotReader.anchor(parent);
                i10 = parent;
                parent = slotReader.parent(parent);
                obj = anchor2;
            } else {
                i10 = parent;
                obj = anchor;
            }
        }
        return readerTraceBuilder.trace();
    }

    @NotNull
    public static final List<ComposeStackTraceFrame> buildTrace(@NotNull SlotReader slotReader) {
        if (!slotReader.getClosed() && slotReader.getSize() != 0) {
            ReaderTraceBuilder readerTraceBuilder = new ReaderTraceBuilder(slotReader);
            int parent = slotReader.getParent();
            Object valueOf = Integer.valueOf(slotReader.getSlot());
            while (parent >= 0) {
                readerTraceBuilder.processEdge(slotReader.getTable$runtime().sourceInformationOf(parent), valueOf);
                valueOf = slotReader.anchor(parent);
                parent = slotReader.parent(parent);
            }
            return readerTraceBuilder.trace();
        }
        return CollectionsKt.n();
    }
}
