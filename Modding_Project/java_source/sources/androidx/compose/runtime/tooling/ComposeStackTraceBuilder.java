package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.GroupSourceInformation;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposeStackTraceBuilder.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nComposeStackTraceBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeStackTraceBuilder.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,311:1\n1#2:312\n34#3,5:313\n34#3,5:318\n*S KotlinDebug\n*F\n+ 1 ComposeStackTraceBuilder.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceBuilder\n*L\n90#1:313,5\n162#1:318,5\n*E\n"})
/* loaded from: classes.dex */
public abstract class ComposeStackTraceBuilder {
    public static final int $stable = 8;
    @NotNull
    private final List<ComposeStackTraceFrame> _trace = new ArrayList();

    private final void appendTraceFrame(GroupSourceInformation groupSourceInformation, Object obj) {
        ComposeStackTraceFrame extractTraceFrame = extractTraceFrame(groupSourceInformation, obj);
        if (extractTraceFrame != null) {
            this._trace.add(extractTraceFrame);
        }
    }

    private final ComposeStackTraceFrame extractTraceFrame(GroupSourceInformation groupSourceInformation, Object obj) {
        SourceInformation sourceInformation;
        String str;
        ArrayList<Object> groups;
        String sourceInformation2 = groupSourceInformation.getSourceInformation();
        if (sourceInformation2 != null) {
            sourceInformation = SourceInformationKt.parseSourceInformation(sourceInformation2);
        } else {
            sourceInformation = null;
        }
        if (sourceInformation == null) {
            return null;
        }
        if (obj == null) {
            return new ComposeStackTraceFrame(sourceInformation, null);
        }
        ArrayList<Object> groups2 = groupSourceInformation.getGroups();
        int i10 = 0;
        if (groups2 != null) {
            int size = groups2.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Object obj2 = groups2.get(i12);
                if (Intrinsics.areEqual(obj2, obj)) {
                    break;
                }
                GroupSourceInformation sourceInformationOf = sourceInformationOf(obj2);
                if (sourceInformationOf != null && (sourceInformationOf.getKey() == -127 || (sourceInformationOf.getKey() == 0 && (obj2 instanceof Anchor) && groupKeyOf((Anchor) obj2) == -127))) {
                    if (sourceInformationOf != null) {
                        str = sourceInformationOf.getSourceInformation();
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        if (sourceInformationOf != null && (groups = sourceInformationOf.getGroups()) != null) {
                            int size2 = groups.size();
                            for (int i13 = 0; i13 < size2; i13++) {
                                GroupSourceInformation sourceInformationOf2 = sourceInformationOf(groups.get(i13));
                                if (sourceInformationOf2 != null && isCall(sourceInformationOf2)) {
                                    i11++;
                                }
                            }
                        }
                    }
                }
                if (sourceInformationOf != null && isCall(sourceInformationOf)) {
                    i11++;
                }
            }
            i10 = i11;
        }
        return new ComposeStackTraceFrame(sourceInformation, Integer.valueOf(i10));
    }

    private final boolean findInGroupSourceInformation(GroupSourceInformation groupSourceInformation, Object obj) {
        ArrayList<Object> groups = groupSourceInformation.getGroups();
        boolean z10 = false;
        if (groups == null) {
            if (!groupSourceInformation.getClosed()) {
                appendTraceFrame(groupSourceInformation, null);
                return true;
            }
            int dataStartOffset = groupSourceInformation.getDataStartOffset();
            int dataEndOffset = groupSourceInformation.getDataEndOffset();
            if (obj instanceof Integer) {
                Number number = (Number) obj;
                int intValue = number.intValue();
                if ((dataStartOffset <= intValue && intValue < dataEndOffset) || (dataStartOffset == dataEndOffset && (obj instanceof Integer) && dataStartOffset == number.intValue())) {
                    z10 = true;
                }
                if (z10) {
                    appendTraceFrame(groupSourceInformation, null);
                }
            }
            return z10;
        }
        int size = groups.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj2 = groups.get(i10);
            if (obj2 instanceof Anchor) {
                if (Intrinsics.areEqual(obj2, obj)) {
                    appendTraceFrame(groupSourceInformation, obj2);
                    return true;
                }
            } else if (obj2 instanceof GroupSourceInformation) {
                if (findInGroupSourceInformation((GroupSourceInformation) obj2, obj)) {
                    appendTraceFrame(groupSourceInformation, obj2);
                    return true;
                }
            } else {
                throw new IllegalStateException(("Unexpected child source info " + obj2).toString());
            }
        }
        return false;
    }

    private final boolean isCall(GroupSourceInformation groupSourceInformation) {
        String sourceInformation = groupSourceInformation.getSourceInformation();
        if (sourceInformation == null || !StringsKt.V(sourceInformation, "C", false, 2, null)) {
            return false;
        }
        return true;
    }

    private final GroupSourceInformation sourceInformationOf(Object obj) {
        if (obj instanceof Anchor) {
            return sourceInformationOf((Anchor) obj);
        }
        if (obj instanceof GroupSourceInformation) {
            return (GroupSourceInformation) obj;
        }
        throw new IllegalStateException(("Unexpected child source info " + obj).toString());
    }

    public abstract int groupKeyOf(@NotNull Anchor anchor);

    public final void processEdge(@Nullable GroupSourceInformation groupSourceInformation, @Nullable Object obj) {
        if (groupSourceInformation != null) {
            if (obj == null) {
                appendTraceFrame(groupSourceInformation, null);
            } else if (!findInGroupSourceInformation(groupSourceInformation, obj) && !groupSourceInformation.getClosed()) {
                appendTraceFrame(groupSourceInformation, null);
            }
        }
    }

    @Nullable
    public abstract GroupSourceInformation sourceInformationOf(@NotNull Anchor anchor);

    @NotNull
    public final List<ComposeStackTraceFrame> trace() {
        return this._trace;
    }
}
