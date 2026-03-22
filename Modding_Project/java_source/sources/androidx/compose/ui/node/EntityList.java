package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsModifier;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EntityList.kt */
@Metadata
/* loaded from: classes.dex */
public final class EntityList {
    private static final int TypeCount = 6;
    @NotNull
    private final LayoutNodeEntity<?, ?>[] entities;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int DrawEntityType = EntityType.m3448constructorimpl(0);
    private static final int PointerInputEntityType = EntityType.m3448constructorimpl(1);
    private static final int SemanticsEntityType = EntityType.m3448constructorimpl(2);
    private static final int ParentDataEntityType = EntityType.m3448constructorimpl(3);
    private static final int OnPlacedEntityType = EntityType.m3448constructorimpl(4);
    private static final int RemeasureEntityType = EntityType.m3448constructorimpl(5);

    /* compiled from: EntityList.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDrawEntityType-EEbPh1w */
        public final int m3441getDrawEntityTypeEEbPh1w() {
            return EntityList.DrawEntityType;
        }

        /* renamed from: getOnPlacedEntityType-EEbPh1w */
        public final int m3442getOnPlacedEntityTypeEEbPh1w() {
            return EntityList.OnPlacedEntityType;
        }

        /* renamed from: getParentDataEntityType-EEbPh1w */
        public final int m3443getParentDataEntityTypeEEbPh1w() {
            return EntityList.ParentDataEntityType;
        }

        /* renamed from: getPointerInputEntityType-EEbPh1w */
        public final int m3444getPointerInputEntityTypeEEbPh1w() {
            return EntityList.PointerInputEntityType;
        }

        /* renamed from: getRemeasureEntityType-EEbPh1w */
        public final int m3445getRemeasureEntityTypeEEbPh1w() {
            return EntityList.RemeasureEntityType;
        }

        /* renamed from: getSemanticsEntityType-EEbPh1w */
        public final int m3446getSemanticsEntityTypeEEbPh1w() {
            return EntityList.SemanticsEntityType;
        }

        private Companion() {
        }

        /* renamed from: getOnPlacedEntityType-EEbPh1w$annotations */
        public static /* synthetic */ void m3440getOnPlacedEntityTypeEEbPh1w$annotations() {
        }
    }

    private /* synthetic */ EntityList(LayoutNodeEntity[] layoutNodeEntityArr) {
        this.entities = layoutNodeEntityArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: add-impl */
    private static final <T extends LayoutNodeEntity<T, ?>> void m3423addimpl(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, T t10, int i10) {
        t10.setNext(layoutNodeEntityArr[i10]);
        layoutNodeEntityArr[i10] = t10;
    }

    /* renamed from: addAfterLayoutModifier-impl */
    public static final void m3424addAfterLayoutModifierimpl(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, @NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "layoutNodeWrapper");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        if (modifier instanceof OnPlacedModifier) {
            m3423addimpl(layoutNodeEntityArr, new SimpleEntity(layoutNodeWrapper, modifier), OnPlacedEntityType);
        }
        if (modifier instanceof OnRemeasuredModifier) {
            m3423addimpl(layoutNodeEntityArr, new SimpleEntity(layoutNodeWrapper, modifier), RemeasureEntityType);
        }
    }

    /* renamed from: addBeforeLayoutModifier-impl */
    public static final void m3425addBeforeLayoutModifierimpl(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, @NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "layoutNodeWrapper");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        if (modifier instanceof DrawModifier) {
            m3423addimpl(layoutNodeEntityArr, new DrawEntity(layoutNodeWrapper, (DrawModifier) modifier), DrawEntityType);
        }
        if (modifier instanceof PointerInputModifier) {
            m3423addimpl(layoutNodeEntityArr, new PointerInputEntity(layoutNodeWrapper, (PointerInputModifier) modifier), PointerInputEntityType);
        }
        if (modifier instanceof SemanticsModifier) {
            m3423addimpl(layoutNodeEntityArr, new SemanticsEntity(layoutNodeWrapper, (SemanticsModifier) modifier), SemanticsEntityType);
        }
        if (modifier instanceof ParentDataModifier) {
            m3423addimpl(layoutNodeEntityArr, new SimpleEntity(layoutNodeWrapper, modifier), ParentDataEntityType);
        }
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ EntityList m3426boximpl(LayoutNodeEntity[] layoutNodeEntityArr) {
        return new EntityList(layoutNodeEntityArr);
    }

    /* renamed from: clear-impl */
    public static final void m3427clearimpl(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr) {
        for (LayoutNodeEntity<?, ?> layoutNodeEntity : layoutNodeEntityArr) {
            for (; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
                if (layoutNodeEntity.isAttached()) {
                    layoutNodeEntity.onDetach();
                }
            }
        }
        int length = layoutNodeEntityArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            layoutNodeEntityArr[i10] = null;
        }
    }

    @NotNull
    /* renamed from: constructor-impl */
    public static LayoutNodeEntity<?, ?>[] m3428constructorimpl(@NotNull LayoutNodeEntity<?, ?>[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        return entities;
    }

    /* renamed from: constructor-impl$default */
    public static /* synthetic */ LayoutNodeEntity[] m3429constructorimpl$default(LayoutNodeEntity[] layoutNodeEntityArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            layoutNodeEntityArr = new LayoutNodeEntity[6];
        }
        return m3428constructorimpl(layoutNodeEntityArr);
    }

    /* renamed from: equals-impl */
    public static boolean m3430equalsimpl(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, Object obj) {
        if (!(obj instanceof EntityList) || !Intrinsics.areEqual(layoutNodeEntityArr, ((EntityList) obj).m3439unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0 */
    public static final boolean m3431equalsimpl0(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, LayoutNodeEntity<?, ?>[] layoutNodeEntityArr2) {
        return Intrinsics.areEqual(layoutNodeEntityArr, layoutNodeEntityArr2);
    }

    /* renamed from: forEach-9r0pUL4 */
    public static final <T extends LayoutNodeEntity<T, M>, M extends Modifier> void m3432forEach9r0pUL4(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, int i10, @NotNull Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        for (LayoutNodeEntity<?, ?> layoutNodeEntity = layoutNodeEntityArr[i10]; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
            block.invoke(layoutNodeEntity);
        }
    }

    /* renamed from: forEach-impl */
    private static final <T extends LayoutNodeEntity<T, M>, M extends Modifier> void m3433forEachimpl(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, LayoutNodeEntity<?, ?> layoutNodeEntity, Function1<? super T, Unit> function1) {
        while (layoutNodeEntity != null) {
            function1.invoke(layoutNodeEntity);
            layoutNodeEntity = layoutNodeEntity.getNext();
        }
    }

    /* renamed from: has-0OSVbXo */
    public static final boolean m3435has0OSVbXo(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, int i10) {
        if (layoutNodeEntityArr[i10] != null) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl */
    public static int m3436hashCodeimpl(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr) {
        return Arrays.hashCode(layoutNodeEntityArr);
    }

    @Nullable
    /* renamed from: head-0OSVbXo */
    public static final <T extends LayoutNodeEntity<T, M>, M extends Modifier> T m3437head0OSVbXo(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, int i10) {
        return (T) layoutNodeEntityArr[i10];
    }

    /* renamed from: toString-impl */
    public static String m3438toStringimpl(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr) {
        return "EntityList(entities=" + Arrays.toString(layoutNodeEntityArr) + ')';
    }

    public boolean equals(Object obj) {
        return m3430equalsimpl(this.entities, obj);
    }

    @NotNull
    public final LayoutNodeEntity<?, ?>[] getEntities() {
        return this.entities;
    }

    public int hashCode() {
        return m3436hashCodeimpl(this.entities);
    }

    public String toString() {
        return m3438toStringimpl(this.entities);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ LayoutNodeEntity[] m3439unboximpl() {
        return this.entities;
    }

    /* renamed from: forEach-impl */
    public static final void m3434forEachimpl(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, @NotNull Function1<? super LayoutNodeEntity<?, ?>, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        for (LayoutNodeEntity<?, ?> layoutNodeEntity : layoutNodeEntityArr) {
            for (; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
                block.invoke(layoutNodeEntity);
            }
        }
    }

    /* compiled from: EntityList.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class EntityType<T extends LayoutNodeEntity<T, M>, M extends Modifier> {
        private final int index;

        private /* synthetic */ EntityType(int i10) {
            this.index = i10;
        }

        /* renamed from: box-impl */
        public static final /* synthetic */ EntityType m3447boximpl(int i10) {
            return new EntityType(i10);
        }

        /* renamed from: equals-impl */
        public static boolean m3449equalsimpl(int i10, Object obj) {
            if (!(obj instanceof EntityType) || i10 != ((EntityType) obj).m3453unboximpl()) {
                return false;
            }
            return true;
        }

        /* renamed from: equals-impl0 */
        public static final boolean m3450equalsimpl0(int i10, int i11) {
            if (i10 == i11) {
                return true;
            }
            return false;
        }

        /* renamed from: hashCode-impl */
        public static int m3451hashCodeimpl(int i10) {
            return Integer.hashCode(i10);
        }

        /* renamed from: toString-impl */
        public static String m3452toStringimpl(int i10) {
            return "EntityType(index=" + i10 + ')';
        }

        public boolean equals(Object obj) {
            return m3449equalsimpl(this.index, obj);
        }

        public final int getIndex() {
            return this.index;
        }

        public int hashCode() {
            return m3451hashCodeimpl(this.index);
        }

        public String toString() {
            return m3452toStringimpl(this.index);
        }

        /* renamed from: unbox-impl */
        public final /* synthetic */ int m3453unboximpl() {
            return this.index;
        }

        /* renamed from: constructor-impl */
        public static <T extends LayoutNodeEntity<T, M>, M extends Modifier> int m3448constructorimpl(int i10) {
            return i10;
        }
    }
}
