package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import com.ss.ttm.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageVector.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ImageVector {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final boolean autoMirror;
    private final float defaultHeight;
    private final float defaultWidth;
    @NotNull
    private final String name;
    @NotNull
    private final VectorGroup root;
    private final int tintBlendMode;
    private final long tintColor;
    private final float viewportHeight;
    private final float viewportWidth;

    /* compiled from: ImageVector.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        public static final int $stable = 8;
        private final boolean autoMirror;
        private final float defaultHeight;
        private final float defaultWidth;
        private boolean isConsumed;
        @NotNull
        private final String name;
        @NotNull
        private final ArrayList<GroupParams> nodes;
        @NotNull
        private GroupParams root;
        private final int tintBlendMode;
        private final long tintColor;
        private final float viewportHeight;
        private final float viewportWidth;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: ImageVector.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class GroupParams {
            @NotNull
            private List<VectorNode> children;
            @NotNull
            private List<? extends PathNode> clipPathData;
            @NotNull
            private String name;
            private float pivotX;
            private float pivotY;
            private float rotate;
            private float scaleX;
            private float scaleY;
            private float translationX;
            private float translationY;

            public GroupParams() {
                this(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, null);
            }

            @NotNull
            public final List<VectorNode> getChildren() {
                return this.children;
            }

            @NotNull
            public final List<PathNode> getClipPathData() {
                return this.clipPathData;
            }

            @NotNull
            public final String getName() {
                return this.name;
            }

            public final float getPivotX() {
                return this.pivotX;
            }

            public final float getPivotY() {
                return this.pivotY;
            }

            public final float getRotate() {
                return this.rotate;
            }

            public final float getScaleX() {
                return this.scaleX;
            }

            public final float getScaleY() {
                return this.scaleY;
            }

            public final float getTranslationX() {
                return this.translationX;
            }

            public final float getTranslationY() {
                return this.translationY;
            }

            public final void setChildren(@NotNull List<VectorNode> list) {
                Intrinsics.checkNotNullParameter(list, "<set-?>");
                this.children = list;
            }

            public final void setClipPathData(@NotNull List<? extends PathNode> list) {
                Intrinsics.checkNotNullParameter(list, "<set-?>");
                this.clipPathData = list;
            }

            public final void setName(@NotNull String str) {
                Intrinsics.checkNotNullParameter(str, "<set-?>");
                this.name = str;
            }

            public final void setPivotX(float f10) {
                this.pivotX = f10;
            }

            public final void setPivotY(float f10) {
                this.pivotY = f10;
            }

            public final void setRotate(float f10) {
                this.rotate = f10;
            }

            public final void setScaleX(float f10) {
                this.scaleX = f10;
            }

            public final void setScaleY(float f10) {
                this.scaleY = f10;
            }

            public final void setTranslationX(float f10) {
                this.translationX = f10;
            }

            public final void setTranslationY(float f10) {
                this.translationY = f10;
            }

            public GroupParams(@NotNull String name, float f10, float f11, float f12, float f13, float f14, float f15, float f16, @NotNull List<? extends PathNode> clipPathData, @NotNull List<VectorNode> children) {
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(clipPathData, "clipPathData");
                Intrinsics.checkNotNullParameter(children, "children");
                this.name = name;
                this.rotate = f10;
                this.pivotX = f11;
                this.pivotY = f12;
                this.scaleX = f13;
                this.scaleY = f14;
                this.translationX = f15;
                this.translationY = f16;
                this.clipPathData = clipPathData;
                this.children = children;
            }

            public /* synthetic */ GroupParams(String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
                this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? 0.0f : f10, (i10 & 4) != 0 ? 0.0f : f11, (i10 & 8) != 0 ? 0.0f : f12, (i10 & 16) != 0 ? 1.0f : f13, (i10 & 32) == 0 ? f14 : 1.0f, (i10 & 64) != 0 ? 0.0f : f15, (i10 & 128) == 0 ? f16 : 0.0f, (i10 & 256) != 0 ? VectorKt.getEmptyPath() : list, (i10 & 512) != 0 ? new ArrayList() : list2);
            }
        }

        @c
        public /* synthetic */ Builder(String str, float f10, float f11, float f12, float f13, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, f10, f11, f12, f13, j10, i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Builder addGroup$default(Builder builder, String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, List list, int i10, Object obj) {
            String str2;
            float f17;
            float f18;
            float f19;
            float f20;
            float f21;
            List<PathNode> list2;
            if ((i10 & 1) != 0) {
                str2 = "";
            } else {
                str2 = str;
            }
            float f22 = 0.0f;
            if ((i10 & 2) != 0) {
                f17 = 0.0f;
            } else {
                f17 = f10;
            }
            if ((i10 & 4) != 0) {
                f18 = 0.0f;
            } else {
                f18 = f11;
            }
            if ((i10 & 8) != 0) {
                f19 = 0.0f;
            } else {
                f19 = f12;
            }
            float f23 = 1.0f;
            if ((i10 & 16) != 0) {
                f20 = 1.0f;
            } else {
                f20 = f13;
            }
            if ((i10 & 32) == 0) {
                f23 = f14;
            }
            if ((i10 & 64) != 0) {
                f21 = 0.0f;
            } else {
                f21 = f15;
            }
            if ((i10 & 128) == 0) {
                f22 = f16;
            }
            if ((i10 & 256) != 0) {
                list2 = VectorKt.getEmptyPath();
            } else {
                list2 = list;
            }
            return builder.addGroup(str2, f17, f18, f19, f20, f23, f21, f22, list2);
        }

        /* renamed from: addPath-oIyEayM$default  reason: not valid java name */
        public static /* synthetic */ Builder m2417addPathoIyEayM$default(Builder builder, List list, int i10, String str, Brush brush, float f10, Brush brush2, float f11, float f12, int i11, int i12, float f13, float f14, float f15, float f16, int i13, Object obj) {
            int i14;
            String str2;
            Brush brush3;
            float f17;
            float f18;
            float f19;
            int i15;
            int i16;
            float f20;
            float f21;
            if ((i13 & 2) != 0) {
                i14 = VectorKt.getDefaultFillType();
            } else {
                i14 = i10;
            }
            if ((i13 & 4) != 0) {
                str2 = "";
            } else {
                str2 = str;
            }
            Brush brush4 = null;
            if ((i13 & 8) != 0) {
                brush3 = null;
            } else {
                brush3 = brush;
            }
            float f22 = 1.0f;
            if ((i13 & 16) != 0) {
                f17 = 1.0f;
            } else {
                f17 = f10;
            }
            if ((i13 & 32) == 0) {
                brush4 = brush2;
            }
            if ((i13 & 64) != 0) {
                f18 = 1.0f;
            } else {
                f18 = f11;
            }
            float f23 = 0.0f;
            if ((i13 & 128) != 0) {
                f19 = 0.0f;
            } else {
                f19 = f12;
            }
            if ((i13 & 256) != 0) {
                i15 = VectorKt.getDefaultStrokeLineCap();
            } else {
                i15 = i11;
            }
            if ((i13 & 512) != 0) {
                i16 = VectorKt.getDefaultStrokeLineJoin();
            } else {
                i16 = i12;
            }
            if ((i13 & 1024) != 0) {
                f20 = 4.0f;
            } else {
                f20 = f13;
            }
            if ((i13 & 2048) != 0) {
                f21 = 0.0f;
            } else {
                f21 = f14;
            }
            if ((i13 & 4096) == 0) {
                f22 = f15;
            }
            if ((i13 & 8192) == 0) {
                f23 = f16;
            }
            return builder.m2418addPathoIyEayM(list, i14, str2, brush3, f17, brush4, f18, f19, i15, i16, f20, f21, f22, f23);
        }

        private final VectorGroup asVectorGroup(GroupParams groupParams) {
            return new VectorGroup(groupParams.getName(), groupParams.getRotate(), groupParams.getPivotX(), groupParams.getPivotY(), groupParams.getScaleX(), groupParams.getScaleY(), groupParams.getTranslationX(), groupParams.getTranslationY(), groupParams.getClipPathData(), groupParams.getChildren());
        }

        private final void ensureNotConsumed() {
            if (!this.isConsumed) {
                return;
            }
            throw new IllegalStateException("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
        }

        private final GroupParams getCurrentGroup() {
            return (GroupParams) Stack.m2434peekimpl(this.nodes);
        }

        @NotNull
        public final Builder addGroup(@NotNull String name, float f10, float f11, float f12, float f13, float f14, float f15, float f16, @NotNull List<? extends PathNode> clipPathData) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(clipPathData, "clipPathData");
            ensureNotConsumed();
            Stack.m2436pushimpl(this.nodes, new GroupParams(name, f10, f11, f12, f13, f14, f15, f16, clipPathData, null, 512, null));
            return this;
        }

        @NotNull
        /* renamed from: addPath-oIyEayM  reason: not valid java name */
        public final Builder m2418addPathoIyEayM(@NotNull List<? extends PathNode> pathData, int i10, @NotNull String name, @Nullable Brush brush, float f10, @Nullable Brush brush2, float f11, float f12, int i11, int i12, float f13, float f14, float f15, float f16) {
            Intrinsics.checkNotNullParameter(pathData, "pathData");
            Intrinsics.checkNotNullParameter(name, "name");
            ensureNotConsumed();
            getCurrentGroup().getChildren().add(new VectorPath(name, pathData, i10, brush, f10, brush2, f11, f12, i11, i12, f13, f14, f15, f16, null));
            return this;
        }

        @NotNull
        public final ImageVector build() {
            ensureNotConsumed();
            while (Stack.m2432getSizeimpl(this.nodes) > 1) {
                clearGroup();
            }
            ImageVector imageVector = new ImageVector(this.name, this.defaultWidth, this.defaultHeight, this.viewportWidth, this.viewportHeight, asVectorGroup(this.root), this.tintColor, this.tintBlendMode, this.autoMirror, null);
            this.isConsumed = true;
            return imageVector;
        }

        @NotNull
        public final Builder clearGroup() {
            ensureNotConsumed();
            getCurrentGroup().getChildren().add(asVectorGroup((GroupParams) Stack.m2435popimpl(this.nodes)));
            return this;
        }

        public /* synthetic */ Builder(String str, float f10, float f11, float f12, float f13, long j10, int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, f10, f11, f12, f13, j10, i10, z10);
        }

        private Builder(String str, float f10, float f11, float f12, float f13, long j10, int i10, boolean z10) {
            this.name = str;
            this.defaultWidth = f10;
            this.defaultHeight = f11;
            this.viewportWidth = f12;
            this.viewportHeight = f13;
            this.tintColor = j10;
            this.tintBlendMode = i10;
            this.autoMirror = z10;
            ArrayList<GroupParams> m2429constructorimpl$default = Stack.m2429constructorimpl$default(null, 1, null);
            this.nodes = m2429constructorimpl$default;
            GroupParams groupParams = new GroupParams(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, null);
            this.root = groupParams;
            Stack.m2436pushimpl(m2429constructorimpl$default, groupParams);
        }

        public /* synthetic */ Builder(String str, float f10, float f11, float f12, float f13, long j10, int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? "" : str, f10, f11, f12, f13, (i11 & 32) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j10, (i11 & 64) != 0 ? BlendMode.Companion.m1784getSrcIn0nO6VwU() : i10, (i11 & 128) != 0 ? false : z10, (DefaultConstructorMarker) null);
        }

        public /* synthetic */ Builder(String str, float f10, float f11, float f12, float f13, long j10, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? "" : str, f10, f11, f12, f13, (i11 & 32) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j10, (i11 & 64) != 0 ? BlendMode.Companion.m1784getSrcIn0nO6VwU() : i10, (DefaultConstructorMarker) null);
        }

        private Builder(String str, float f10, float f11, float f12, float f13, long j10, int i10) {
            this(str, f10, f11, f12, f13, j10, i10, false, (DefaultConstructorMarker) null);
        }
    }

    /* compiled from: ImageVector.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ ImageVector(String str, float f10, float f11, float f12, float f13, VectorGroup vectorGroup, long j10, int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, f10, f11, f12, f13, vectorGroup, j10, i10, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageVector)) {
            return false;
        }
        ImageVector imageVector = (ImageVector) obj;
        if (Intrinsics.areEqual(this.name, imageVector.name) && Dp.m4054equalsimpl0(this.defaultWidth, imageVector.defaultWidth) && Dp.m4054equalsimpl0(this.defaultHeight, imageVector.defaultHeight) && this.viewportWidth == imageVector.viewportWidth && this.viewportHeight == imageVector.viewportHeight && Intrinsics.areEqual(this.root, imageVector.root) && Color.m1843equalsimpl0(this.tintColor, imageVector.tintColor) && BlendMode.m1755equalsimpl0(this.tintBlendMode, imageVector.tintBlendMode) && this.autoMirror == imageVector.autoMirror) {
            return true;
        }
        return false;
    }

    public final boolean getAutoMirror() {
        return this.autoMirror;
    }

    /* renamed from: getDefaultHeight-D9Ej5fM  reason: not valid java name */
    public final float m2413getDefaultHeightD9Ej5fM() {
        return this.defaultHeight;
    }

    /* renamed from: getDefaultWidth-D9Ej5fM  reason: not valid java name */
    public final float m2414getDefaultWidthD9Ej5fM() {
        return this.defaultWidth;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final VectorGroup getRoot() {
        return this.root;
    }

    /* renamed from: getTintBlendMode-0nO6VwU  reason: not valid java name */
    public final int m2415getTintBlendMode0nO6VwU() {
        return this.tintBlendMode;
    }

    /* renamed from: getTintColor-0d7_KjU  reason: not valid java name */
    public final long m2416getTintColor0d7_KjU() {
        return this.tintColor;
    }

    public final float getViewportHeight() {
        return this.viewportHeight;
    }

    public final float getViewportWidth() {
        return this.viewportWidth;
    }

    public int hashCode() {
        return (((((((((((((((this.name.hashCode() * 31) + Dp.m4055hashCodeimpl(this.defaultWidth)) * 31) + Dp.m4055hashCodeimpl(this.defaultHeight)) * 31) + Float.hashCode(this.viewportWidth)) * 31) + Float.hashCode(this.viewportHeight)) * 31) + this.root.hashCode()) * 31) + Color.m1849hashCodeimpl(this.tintColor)) * 31) + BlendMode.m1756hashCodeimpl(this.tintBlendMode)) * 31) + Boolean.hashCode(this.autoMirror);
    }

    private ImageVector(String str, float f10, float f11, float f12, float f13, VectorGroup vectorGroup, long j10, int i10, boolean z10) {
        this.name = str;
        this.defaultWidth = f10;
        this.defaultHeight = f11;
        this.viewportWidth = f12;
        this.viewportHeight = f13;
        this.root = vectorGroup;
        this.tintColor = j10;
        this.tintBlendMode = i10;
        this.autoMirror = z10;
    }
}
