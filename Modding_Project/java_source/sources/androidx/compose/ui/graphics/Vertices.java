package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Vertices.kt */
@Metadata
/* loaded from: classes.dex */
public final class Vertices {
    @NotNull
    private final int[] colors;
    @NotNull
    private final short[] indices;
    @NotNull
    private final float[] positions;
    @NotNull
    private final float[] textureCoordinates;
    private final int vertexMode;

    public /* synthetic */ Vertices(int i10, List list, List list2, List list3, List list4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, list, list2, list3, list4);
    }

    private final int[] encodeColorList(List<Color> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = ColorKt.m1897toArgb8_81llA(list.get(i10).m1852unboximpl());
        }
        return iArr;
    }

    private final float[] encodePointList(List<Offset> list) {
        float m1607getYimpl;
        int size = list.size() * 2;
        float[] fArr = new float[size];
        for (int i10 = 0; i10 < size; i10++) {
            long m1616unboximpl = list.get(i10 / 2).m1616unboximpl();
            if (i10 % 2 == 0) {
                m1607getYimpl = Offset.m1606getXimpl(m1616unboximpl);
            } else {
                m1607getYimpl = Offset.m1607getYimpl(m1616unboximpl);
            }
            fArr[i10] = m1607getYimpl;
        }
        return fArr;
    }

    @NotNull
    public final int[] getColors() {
        return this.colors;
    }

    @NotNull
    public final short[] getIndices() {
        return this.indices;
    }

    @NotNull
    public final float[] getPositions() {
        return this.positions;
    }

    @NotNull
    public final float[] getTextureCoordinates() {
        return this.textureCoordinates;
    }

    /* renamed from: getVertexMode-c2xauaI  reason: not valid java name */
    public final int m2195getVertexModec2xauaI() {
        return this.vertexMode;
    }

    private Vertices(int i10, final List<Offset> list, List<Offset> list2, List<Color> list3, List<Integer> list4) {
        this.vertexMode = i10;
        Function1<Integer, Boolean> function1 = new Function1<Integer, Boolean>() { // from class: androidx.compose.ui.graphics.Vertices$outOfBounds$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Boolean invoke(int i11) {
                return Boolean.valueOf(i11 < 0 || i11 >= list.size());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                return invoke(num.intValue());
            }
        };
        if (list2.size() == list.size()) {
            if (list3.size() == list.size()) {
                int size = list4.size();
                for (int i11 = 0; i11 < size; i11++) {
                    if (function1.invoke(list4.get(i11)).booleanValue()) {
                        throw new IllegalArgumentException("indices values must be valid indices in the positions list.");
                    }
                }
                this.positions = encodePointList(list);
                this.textureCoordinates = encodePointList(list2);
                this.colors = encodeColorList(list3);
                int size2 = list4.size();
                short[] sArr = new short[size2];
                for (int i12 = 0; i12 < size2; i12++) {
                    sArr[i12] = (short) list4.get(i12).intValue();
                }
                this.indices = sArr;
                return;
            }
            throw new IllegalArgumentException("positions and colors lengths must match.");
        }
        throw new IllegalArgumentException("positions and textureCoordinates lengths must match.");
    }
}
