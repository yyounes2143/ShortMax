package gatewayprotocol.v1;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiagnosticTagKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiagnosticTagKt {
    @NotNull
    public static final DiagnosticTagKt INSTANCE = new DiagnosticTagKt();

    /* compiled from: DiagnosticTagKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final DiagnosticEventRequestOuterClass.DiagnosticTag.Builder _builder;

        /* compiled from: DiagnosticTagKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(DiagnosticEventRequestOuterClass.DiagnosticTag.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: DiagnosticTagKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class TagTypeProxy extends DslProxy {
            private TagTypeProxy() {
            }
        }

        public /* synthetic */ Dsl(DiagnosticEventRequestOuterClass.DiagnosticTag.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ DiagnosticEventRequestOuterClass.DiagnosticTag _build() {
            DiagnosticEventRequestOuterClass.DiagnosticTag build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllTagType(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllTagType(values);
        }

        public final /* synthetic */ void addTagType(DslList dslList, DiagnosticEventRequestOuterClass.DiagnosticTagType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addTagType(value);
        }

        public final void clearCustomTagType() {
            this._builder.clearCustomTagType();
        }

        public final void clearIntValue() {
            this._builder.clearIntValue();
        }

        public final void clearStringValue() {
            this._builder.clearStringValue();
        }

        public final /* synthetic */ void clearTagType(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearTagType();
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        @NotNull
        public final String getCustomTagType() {
            String customTagType = this._builder.getCustomTagType();
            Intrinsics.checkNotNullExpressionValue(customTagType, "_builder.getCustomTagType()");
            return customTagType;
        }

        public final int getIntValue() {
            return this._builder.getIntValue();
        }

        @NotNull
        public final String getStringValue() {
            String stringValue = this._builder.getStringValue();
            Intrinsics.checkNotNullExpressionValue(stringValue, "_builder.getStringValue()");
            return stringValue;
        }

        public final /* synthetic */ DslList getTagType() {
            List<DiagnosticEventRequestOuterClass.DiagnosticTagType> tagTypeList = this._builder.getTagTypeList();
            Intrinsics.checkNotNullExpressionValue(tagTypeList, "_builder.getTagTypeList()");
            return new DslList(tagTypeList);
        }

        @NotNull
        public final DiagnosticEventRequestOuterClass.DiagnosticTag.ValueCase getValueCase() {
            DiagnosticEventRequestOuterClass.DiagnosticTag.ValueCase valueCase = this._builder.getValueCase();
            Intrinsics.checkNotNullExpressionValue(valueCase, "_builder.getValueCase()");
            return valueCase;
        }

        public final boolean hasCustomTagType() {
            return this._builder.hasCustomTagType();
        }

        public final boolean hasIntValue() {
            return this._builder.hasIntValue();
        }

        public final boolean hasStringValue() {
            return this._builder.hasStringValue();
        }

        public final /* synthetic */ void plusAssignAllTagType(DslList<DiagnosticEventRequestOuterClass.DiagnosticTagType, TagTypeProxy> dslList, Iterable<? extends DiagnosticEventRequestOuterClass.DiagnosticTagType> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllTagType(dslList, values);
        }

        public final /* synthetic */ void plusAssignTagType(DslList<DiagnosticEventRequestOuterClass.DiagnosticTagType, TagTypeProxy> dslList, DiagnosticEventRequestOuterClass.DiagnosticTagType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addTagType(dslList, value);
        }

        public final void setCustomTagType(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCustomTagType(value);
        }

        public final void setIntValue(int i10) {
            this._builder.setIntValue(i10);
        }

        public final void setStringValue(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStringValue(value);
        }

        public final /* synthetic */ void setTagType(DslList dslList, int i10, DiagnosticEventRequestOuterClass.DiagnosticTagType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTagType(i10, value);
        }

        private Dsl(DiagnosticEventRequestOuterClass.DiagnosticTag.Builder builder) {
            this._builder = builder;
        }
    }

    private DiagnosticTagKt() {
    }
}
