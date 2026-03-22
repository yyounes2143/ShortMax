package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.k;
import org.jetbrains.annotations.NotNull;
import st.l;
import ut.m;
/* compiled from: SavedStateEncoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateEncoder.kt\nandroidx/savedstate/serialization/SavedStateEncoder\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 3 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,281:1\n90#2:282\n90#2:283\n106#2:284\n106#2:285\n106#2:286\n106#2:287\n106#2:288\n106#2:289\n106#2:290\n106#2:291\n106#2:292\n106#2:293\n106#2:294\n106#2:295\n106#2:296\n106#2:297\n106#2:298\n106#2:299\n106#2:300\n106#2:301\n106#2:302\n106#2:303\n106#2:324\n106#2:326\n90#2:327\n106#2:328\n27#3:304\n46#3:305\n32#3,4:306\n31#3,7:316\n126#4:310\n153#4,3:311\n37#5,2:314\n1#6:323\n46#7:325\n*S KotlinDebug\n*F\n+ 1 SavedStateEncoder.kt\nandroidx/savedstate/serialization/SavedStateEncoder\n*L\n108#1:282\n111#1:283\n122#1:284\n126#1:285\n130#1:286\n134#1:287\n138#1:288\n142#1:289\n146#1:290\n150#1:291\n154#1:292\n158#1:293\n162#1:294\n166#1:295\n170#1:296\n174#1:297\n178#1:298\n182#1:299\n186#1:300\n190#1:301\n194#1:302\n198#1:303\n211#1:324\n212#1:326\n229#1:327\n234#1:328\n211#1:304\n211#1:305\n211#1:306,4\n211#1:316,7\n211#1:310\n211#1:311,3\n211#1:314,2\n211#1:323\n211#1:325\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateEncoder extends kotlinx.serialization.encoding.b {
    @NotNull
    private final SavedStateConfiguration configuration;
    @NotNull
    private String key;
    @NotNull
    private final Bundle savedState;
    @NotNull
    private final xt.a serializersModule;

    public SavedStateEncoder(@NotNull Bundle savedState, @NotNull SavedStateConfiguration configuration) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.savedState = savedState;
        this.configuration = configuration;
        this.key = "";
        this.serializersModule = configuration.getSerializersModule();
    }

    private final void checkDiscriminatorCollisions(Bundle bundle, String str) {
        if (this.configuration.getClassDiscriminatorMode() == 1) {
            boolean m4339containsimpl = SavedStateReader.m4339containsimpl(SavedStateReader.m4338constructorimpl(bundle), "type");
            boolean areEqual = Intrinsics.areEqual(str, "type");
            if (m4339containsimpl && areEqual) {
                String m4409getStringimpl = SavedStateReader.m4409getStringimpl(SavedStateReader.m4338constructorimpl(bundle), "type");
                throw new IllegalArgumentException("SavedStateEncoder for " + m4409getStringimpl + " has property '" + str + "' that conflicts with the class discriminator. You can rename a property with @SerialName annotation.");
            }
        }
    }

    private final void encodeBooleanArray(boolean[] zArr) {
        SavedStateWriter.m4431putBooleanArrayimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, zArr);
    }

    private final void encodeCharArray(char[] cArr) {
        SavedStateWriter.m4433putCharArrayimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, cArr);
    }

    private final void encodeDoubleArray(double[] dArr) {
        SavedStateWriter.m4438putDoubleArrayimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, dArr);
    }

    private final void encodeFloatArray(float[] fArr) {
        SavedStateWriter.m4440putFloatArrayimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, fArr);
    }

    private final <T> boolean encodeFormatSpecificTypes(l<? super T> lVar, T t10) {
        if (!SavedStateEncoder_androidKt.encodeFormatSpecificTypesOnPlatform(this, lVar, t10)) {
            SerialDescriptor descriptor = lVar.getDescriptor();
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getIntListDescriptor())) {
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Int>");
                encodeIntList((List) t10);
                return true;
            } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getStringListDescriptor())) {
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>");
                encodeStringList((List) t10);
                return true;
            } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getBooleanArrayDescriptor())) {
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type kotlin.BooleanArray");
                encodeBooleanArray((boolean[]) t10);
                return true;
            } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getCharArrayDescriptor())) {
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type kotlin.CharArray");
                encodeCharArray((char[]) t10);
                return true;
            } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getDoubleArrayDescriptor())) {
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type kotlin.DoubleArray");
                encodeDoubleArray((double[]) t10);
                return true;
            } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getFloatArrayDescriptor())) {
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type kotlin.FloatArray");
                encodeFloatArray((float[]) t10);
                return true;
            } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getIntArrayDescriptor())) {
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type kotlin.IntArray");
                encodeIntArray((int[]) t10);
                return true;
            } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getLongArrayDescriptor())) {
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type kotlin.LongArray");
                encodeLongArray((long[]) t10);
                return true;
            } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getStringArrayDescriptor())) {
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                encodeStringArray((String[]) t10);
                return true;
            } else {
                return false;
            }
        }
        return true;
    }

    private final void encodeIntArray(int[] iArr) {
        SavedStateWriter.m4442putIntArrayimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, iArr);
    }

    private final void encodeIntList(List<Integer> list) {
        SavedStateWriter.m4443putIntListimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, list);
    }

    private final void encodeLongArray(long[] jArr) {
        SavedStateWriter.m4446putLongArrayimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, jArr);
    }

    private final void encodeStringArray(String[] strArr) {
        SavedStateWriter.m4458putStringArrayimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, strArr);
    }

    private final void encodeStringList(List<String> list) {
        SavedStateWriter.m4459putStringListimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, list);
    }

    private final void putClassDiscriminatorIfRequired(SavedStateConfiguration savedStateConfiguration, SerialDescriptor serialDescriptor, Bundle bundle) {
        if (savedStateConfiguration.getClassDiscriminatorMode() != 1 || SavedStateReader.m4339containsimpl(SavedStateReader.m4338constructorimpl(bundle), "type")) {
            return;
        }
        if (Intrinsics.areEqual(serialDescriptor.getKind(), m.a.f68628a) || Intrinsics.areEqual(serialDescriptor.getKind(), m.d.f68631a)) {
            SavedStateWriter.m4457putStringimpl(SavedStateWriter.m4424constructorimpl(bundle), "type", serialDescriptor.h());
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    @NotNull
    public d beginStructure(@NotNull SerialDescriptor descriptor) {
        Pair[] pairArr;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (Intrinsics.areEqual(this.key, "")) {
            putClassDiscriminatorIfRequired(this.configuration, descriptor, this.savedState);
            return this;
        }
        Map i10 = p0.i();
        if (i10.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(i10.size());
            for (Map.Entry entry : i10.entrySet()) {
                arrayList.add(k.a((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        SavedStateWriter.m4424constructorimpl(bundleOf);
        SavedStateWriter.m4451putSavedStateimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, bundleOf);
        putClassDiscriminatorIfRequired(this.configuration, descriptor, bundleOf);
        return new SavedStateEncoder(bundleOf, this.configuration);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeBoolean(boolean z10) {
        SavedStateWriter.m4430putBooleanimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, z10);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeByte(byte b10) {
        SavedStateWriter.m4441putIntimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, b10);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeChar(char c10) {
        SavedStateWriter.m4432putCharimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, c10);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeDouble(double d10) {
        SavedStateWriter.m4437putDoubleimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, d10);
    }

    @Override // kotlinx.serialization.encoding.b
    public boolean encodeElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        String f10 = descriptor.f(i10);
        this.key = f10;
        checkDiscriminatorCollisions(this.savedState, f10);
        return true;
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeEnum(@NotNull SerialDescriptor enumDescriptor, int i10) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        SavedStateWriter.m4441putIntimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, i10);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeFloat(float f10) {
        SavedStateWriter.m4439putFloatimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, f10);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeInt(int i10) {
        SavedStateWriter.m4441putIntimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, i10);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeLong(long j10) {
        SavedStateWriter.m4445putLongimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, j10);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        SavedStateWriter.m4447putNullimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public <T> void encodeSerializableValue(@NotNull l<? super T> serializer, T t10) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (!encodeFormatSpecificTypes(serializer, t10)) {
            super.encodeSerializableValue(serializer, t10);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeShort(short s10) {
        SavedStateWriter.m4441putIntimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, s10);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeString(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        SavedStateWriter.m4457putStringimpl(SavedStateWriter.m4424constructorimpl(this.savedState), this.key, value);
    }

    @NotNull
    public final String getKey$savedstate_release() {
        return this.key;
    }

    @NotNull
    public final Bundle getSavedState$savedstate_release() {
        return this.savedState;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public xt.a getSerializersModule() {
        return this.serializersModule;
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.d
    public boolean shouldEncodeElementDefault(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this.configuration.getEncodeDefaults();
    }
}
