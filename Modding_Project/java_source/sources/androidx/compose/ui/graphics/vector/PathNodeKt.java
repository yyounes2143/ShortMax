package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.vector.PathNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.d;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: PathNode.kt */
@Metadata
/* loaded from: classes.dex */
public final class PathNodeKt {
    private static final char ArcToKey = 'A';
    private static final char CloseKey = 'Z';
    private static final char CurveToKey = 'C';
    private static final char HorizontalToKey = 'H';
    private static final char LineToKey = 'L';
    private static final char MoveToKey = 'M';
    private static final int NUM_ARC_TO_ARGS = 7;
    private static final int NUM_CURVE_TO_ARGS = 6;
    private static final int NUM_HORIZONTAL_TO_ARGS = 1;
    private static final int NUM_LINE_TO_ARGS = 2;
    private static final int NUM_MOVE_TO_ARGS = 2;
    private static final int NUM_QUAD_TO_ARGS = 4;
    private static final int NUM_REFLECTIVE_CURVE_TO_ARGS = 4;
    private static final int NUM_REFLECTIVE_QUAD_TO_ARGS = 2;
    private static final int NUM_VERTICAL_TO_ARGS = 1;
    private static final char QuadToKey = 'Q';
    private static final char ReflectiveCurveToKey = 'S';
    private static final char ReflectiveQuadToKey = 'T';
    private static final char RelativeArcToKey = 'a';
    private static final char RelativeCloseKey = 'z';
    private static final char RelativeCurveToKey = 'c';
    private static final char RelativeHorizontalToKey = 'h';
    private static final char RelativeLineToKey = 'l';
    private static final char RelativeMoveToKey = 'm';
    private static final char RelativeQuadToKey = 'q';
    private static final char RelativeReflectiveCurveToKey = 's';
    private static final char RelativeReflectiveQuadToKey = 't';
    private static final char RelativeVerticalToKey = 'v';
    private static final char VerticalToKey = 'V';

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [float[], java.lang.Object] */
    private static final List<PathNode> pathNodesFromArgs(float[] fArr, int i10, Function1<? super float[], ? extends PathNode> function1) {
        d u10 = e.u(new IntRange(0, fArr.length - i10), i10);
        ArrayList arrayList = new ArrayList(CollectionsKt.z(u10, 10));
        Iterator<Integer> it = u10.iterator();
        while (it.hasNext()) {
            int nextInt = ((m0) it).nextInt();
            ?? x10 = n.x(fArr, nextInt, nextInt + i10);
            Object obj = (PathNode) function1.invoke(x10);
            if ((obj instanceof PathNode.MoveTo) && nextInt > 0) {
                obj = new PathNode.LineTo(x10[0], x10[1]);
            } else if ((obj instanceof PathNode.RelativeMoveTo) && nextInt > 0) {
                obj = new PathNode.RelativeLineTo(x10[0], x10[1]);
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    @NotNull
    public static final List<PathNode> toPathNodes(char c10, @NotNull float[] args) {
        ArrayList arrayList;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        Intrinsics.checkNotNullParameter(args, "args");
        if (c10 == 'z' || c10 == 'Z') {
            return CollectionsKt.e(PathNode.Close.INSTANCE);
        }
        if (c10 == 'm') {
            d u10 = e.u(new IntRange(0, args.length - 2), 2);
            arrayList = new ArrayList(CollectionsKt.z(u10, 10));
            Iterator<Integer> it = u10.iterator();
            while (it.hasNext()) {
                int nextInt = ((m0) it).nextInt();
                float[] x10 = n.x(args, nextInt, nextInt + 2);
                PathNode relativeMoveTo = new PathNode.RelativeMoveTo(x10[0], x10[1]);
                if (nextInt > 0) {
                    relativeMoveTo = new PathNode.RelativeLineTo(x10[0], x10[1]);
                }
                arrayList.add(relativeMoveTo);
            }
        } else if (c10 == 'M') {
            d u11 = e.u(new IntRange(0, args.length - 2), 2);
            arrayList = new ArrayList(CollectionsKt.z(u11, 10));
            Iterator<Integer> it2 = u11.iterator();
            while (it2.hasNext()) {
                int nextInt2 = ((m0) it2).nextInt();
                float[] x11 = n.x(args, nextInt2, nextInt2 + 2);
                PathNode moveTo = new PathNode.MoveTo(x11[0], x11[1]);
                if (nextInt2 > 0) {
                    moveTo = new PathNode.LineTo(x11[0], x11[1]);
                }
                arrayList.add(moveTo);
            }
        } else if (c10 == 'l') {
            d u12 = e.u(new IntRange(0, args.length - 2), 2);
            arrayList = new ArrayList(CollectionsKt.z(u12, 10));
            Iterator<Integer> it3 = u12.iterator();
            while (it3.hasNext()) {
                int nextInt3 = ((m0) it3).nextInt();
                float[] x12 = n.x(args, nextInt3, nextInt3 + 2);
                arrayList.add(new PathNode.RelativeLineTo(x12[0], x12[1]));
            }
        } else if (c10 == 'L') {
            d u13 = e.u(new IntRange(0, args.length - 2), 2);
            arrayList = new ArrayList(CollectionsKt.z(u13, 10));
            Iterator<Integer> it4 = u13.iterator();
            while (it4.hasNext()) {
                int nextInt4 = ((m0) it4).nextInt();
                float[] x13 = n.x(args, nextInt4, nextInt4 + 2);
                arrayList.add(new PathNode.LineTo(x13[0], x13[1]));
            }
        } else if (c10 == 'h') {
            d u14 = e.u(new IntRange(0, args.length - 1), 1);
            arrayList = new ArrayList(CollectionsKt.z(u14, 10));
            Iterator<Integer> it5 = u14.iterator();
            while (it5.hasNext()) {
                int nextInt5 = ((m0) it5).nextInt();
                arrayList.add(new PathNode.RelativeHorizontalTo(n.x(args, nextInt5, nextInt5 + 1)[0]));
            }
        } else if (c10 == 'H') {
            d u15 = e.u(new IntRange(0, args.length - 1), 1);
            arrayList = new ArrayList(CollectionsKt.z(u15, 10));
            Iterator<Integer> it6 = u15.iterator();
            while (it6.hasNext()) {
                int nextInt6 = ((m0) it6).nextInt();
                arrayList.add(new PathNode.HorizontalTo(n.x(args, nextInt6, nextInt6 + 1)[0]));
            }
        } else if (c10 == 'v') {
            d u16 = e.u(new IntRange(0, args.length - 1), 1);
            arrayList = new ArrayList(CollectionsKt.z(u16, 10));
            Iterator<Integer> it7 = u16.iterator();
            while (it7.hasNext()) {
                int nextInt7 = ((m0) it7).nextInt();
                arrayList.add(new PathNode.RelativeVerticalTo(n.x(args, nextInt7, nextInt7 + 1)[0]));
            }
        } else if (c10 == 'V') {
            d u17 = e.u(new IntRange(0, args.length - 1), 1);
            arrayList = new ArrayList(CollectionsKt.z(u17, 10));
            Iterator<Integer> it8 = u17.iterator();
            while (it8.hasNext()) {
                int nextInt8 = ((m0) it8).nextInt();
                arrayList.add(new PathNode.VerticalTo(n.x(args, nextInt8, nextInt8 + 1)[0]));
            }
        } else if (c10 == 'c') {
            d u18 = e.u(new IntRange(0, args.length - 6), 6);
            arrayList = new ArrayList(CollectionsKt.z(u18, 10));
            Iterator<Integer> it9 = u18.iterator();
            while (it9.hasNext()) {
                int nextInt9 = ((m0) it9).nextInt();
                float[] x14 = n.x(args, nextInt9, nextInt9 + 6);
                arrayList.add(new PathNode.RelativeCurveTo(x14[0], x14[1], x14[2], x14[3], x14[4], x14[5]));
            }
        } else if (c10 == 'C') {
            d u19 = e.u(new IntRange(0, args.length - 6), 6);
            arrayList = new ArrayList(CollectionsKt.z(u19, 10));
            Iterator<Integer> it10 = u19.iterator();
            while (it10.hasNext()) {
                int nextInt10 = ((m0) it10).nextInt();
                float[] x15 = n.x(args, nextInt10, nextInt10 + 6);
                arrayList.add(new PathNode.CurveTo(x15[0], x15[1], x15[2], x15[3], x15[4], x15[5]));
            }
        } else if (c10 == 's') {
            d u20 = e.u(new IntRange(0, args.length - 4), 4);
            arrayList = new ArrayList(CollectionsKt.z(u20, 10));
            Iterator<Integer> it11 = u20.iterator();
            while (it11.hasNext()) {
                int nextInt11 = ((m0) it11).nextInt();
                float[] x16 = n.x(args, nextInt11, nextInt11 + 4);
                arrayList.add(new PathNode.RelativeReflectiveCurveTo(x16[0], x16[1], x16[2], x16[3]));
            }
        } else if (c10 == 'S') {
            d u21 = e.u(new IntRange(0, args.length - 4), 4);
            arrayList = new ArrayList(CollectionsKt.z(u21, 10));
            Iterator<Integer> it12 = u21.iterator();
            while (it12.hasNext()) {
                int nextInt12 = ((m0) it12).nextInt();
                float[] x17 = n.x(args, nextInt12, nextInt12 + 4);
                arrayList.add(new PathNode.ReflectiveCurveTo(x17[0], x17[1], x17[2], x17[3]));
            }
        } else if (c10 == 'q') {
            d u22 = e.u(new IntRange(0, args.length - 4), 4);
            arrayList = new ArrayList(CollectionsKt.z(u22, 10));
            Iterator<Integer> it13 = u22.iterator();
            while (it13.hasNext()) {
                int nextInt13 = ((m0) it13).nextInt();
                float[] x18 = n.x(args, nextInt13, nextInt13 + 4);
                arrayList.add(new PathNode.RelativeQuadTo(x18[0], x18[1], x18[2], x18[3]));
            }
        } else if (c10 == 'Q') {
            d u23 = e.u(new IntRange(0, args.length - 4), 4);
            arrayList = new ArrayList(CollectionsKt.z(u23, 10));
            Iterator<Integer> it14 = u23.iterator();
            while (it14.hasNext()) {
                int nextInt14 = ((m0) it14).nextInt();
                float[] x19 = n.x(args, nextInt14, nextInt14 + 4);
                arrayList.add(new PathNode.QuadTo(x19[0], x19[1], x19[2], x19[3]));
            }
        } else if (c10 == 't') {
            d u24 = e.u(new IntRange(0, args.length - 2), 2);
            arrayList = new ArrayList(CollectionsKt.z(u24, 10));
            Iterator<Integer> it15 = u24.iterator();
            while (it15.hasNext()) {
                int nextInt15 = ((m0) it15).nextInt();
                float[] x20 = n.x(args, nextInt15, nextInt15 + 2);
                arrayList.add(new PathNode.RelativeReflectiveQuadTo(x20[0], x20[1]));
            }
        } else if (c10 == 'T') {
            d u25 = e.u(new IntRange(0, args.length - 2), 2);
            arrayList = new ArrayList(CollectionsKt.z(u25, 10));
            Iterator<Integer> it16 = u25.iterator();
            while (it16.hasNext()) {
                int nextInt16 = ((m0) it16).nextInt();
                float[] x21 = n.x(args, nextInt16, nextInt16 + 2);
                arrayList.add(new PathNode.ReflectiveQuadTo(x21[0], x21[1]));
            }
        } else if (c10 == 'a') {
            d u26 = e.u(new IntRange(0, args.length - 7), 7);
            arrayList = new ArrayList(CollectionsKt.z(u26, 10));
            Iterator<Integer> it17 = u26.iterator();
            while (it17.hasNext()) {
                int nextInt17 = ((m0) it17).nextInt();
                float[] x22 = n.x(args, nextInt17, nextInt17 + 7);
                float f10 = x22[0];
                float f11 = x22[1];
                float f12 = x22[2];
                if (Float.compare(x22[3], 0.0f) != 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (Float.compare(x22[4], 0.0f) != 0) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                arrayList.add(new PathNode.RelativeArcTo(f10, f11, f12, z12, z13, x22[5], x22[6]));
            }
        } else if (c10 == 'A') {
            d u27 = e.u(new IntRange(0, args.length - 7), 7);
            arrayList = new ArrayList(CollectionsKt.z(u27, 10));
            Iterator<Integer> it18 = u27.iterator();
            while (it18.hasNext()) {
                int nextInt18 = ((m0) it18).nextInt();
                float[] x23 = n.x(args, nextInt18, nextInt18 + 7);
                float f13 = x23[0];
                float f14 = x23[1];
                float f15 = x23[2];
                if (Float.compare(x23[3], 0.0f) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (Float.compare(x23[4], 0.0f) != 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                arrayList.add(new PathNode.ArcTo(f13, f14, f15, z10, z11, x23[5], x23[6]));
            }
        } else {
            throw new IllegalArgumentException("Unknown command for: " + c10);
        }
        return arrayList;
    }
}
