package hs;

import io.ktor.utils.io.core.InsufficientSpaceException;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferPrimitives.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBufferPrimitives.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n+ 6 MemoryPrimitives.kt\nio/ktor/utils/io/bits/MemoryPrimitivesKt\n+ 7 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 9 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 10 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n*L\n1#1,797:1\n762#1,7:807\n769#1,5:819\n774#1:825\n777#1:828\n762#1,7:829\n769#1,5:841\n774#1:848\n777#1:851\n762#1,7:852\n769#1,5:864\n774#1:870\n777#1:873\n762#1,7:874\n769#1,5:886\n774#1:893\n777#1:896\n762#1,7:897\n769#1,5:909\n774#1:915\n777#1:918\n762#1,7:919\n769#1,5:931\n774#1:938\n777#1:941\n762#1,7:942\n769#1,5:954\n774#1:960\n777#1:963\n762#1,7:964\n769#1,5:976\n774#1:982\n777#1:985\n784#1,5:986\n789#1,5:996\n794#1:1003\n796#1:1006\n784#1,5:1007\n789#1,5:1017\n794#1:1025\n796#1:1028\n784#1,5:1029\n789#1,5:1039\n794#1:1046\n796#1:1049\n784#1,5:1050\n789#1,5:1060\n794#1:1068\n796#1:1071\n784#1,5:1072\n789#1,5:1082\n794#1:1089\n796#1:1092\n784#1,5:1093\n789#1,5:1103\n794#1:1111\n796#1:1114\n784#1,5:1115\n789#1,5:1125\n794#1:1132\n796#1:1135\n784#1,5:1136\n789#1,5:1146\n794#1:1153\n796#1:1156\n762#1,7:1157\n769#1,5:1169\n774#1:1176\n777#1:1179\n784#1,5:1183\n789#1,5:1193\n794#1:1206\n796#1:1209\n762#1,7:1210\n769#1,6:1222\n777#1:1230\n784#1,5:1233\n789#1,6:1243\n796#1:1251\n762#1,7:1252\n769#1,6:1264\n777#1:1272\n784#1,5:1275\n789#1,6:1285\n796#1:1293\n762#1,7:1294\n769#1,6:1306\n777#1:1314\n784#1,5:1317\n789#1,6:1327\n796#1:1335\n762#1,7:1336\n769#1,6:1348\n777#1:1356\n784#1,5:1359\n789#1,6:1369\n796#1:1377\n762#1,7:1378\n769#1,6:1390\n777#1:1398\n784#1,5:1401\n789#1,6:1411\n796#1:1419\n762#1,7:1421\n769#1,6:1433\n777#1:1441\n762#1,7:1446\n769#1,6:1458\n777#1:1466\n784#1,5:1469\n789#1,6:1479\n796#1:1487\n784#1,5:1492\n789#1,6:1502\n796#1:1510\n372#2,5:798\n377#2,2:805\n372#2,5:814\n377#2,2:826\n372#2,5:836\n377#2,2:849\n372#2,5:859\n377#2,2:871\n372#2,5:881\n377#2,2:894\n372#2,5:904\n377#2,2:916\n372#2,5:926\n377#2,2:939\n372#2,5:949\n377#2,2:961\n372#2,5:971\n377#2,2:983\n390#2,5:991\n395#2,2:1004\n390#2,5:1012\n395#2,2:1026\n390#2,5:1034\n395#2,2:1047\n390#2,5:1055\n395#2,2:1069\n390#2,5:1077\n395#2,2:1090\n390#2,5:1098\n395#2,2:1112\n390#2,5:1120\n395#2,2:1133\n390#2,5:1141\n395#2,2:1154\n372#2,5:1164\n377#2,2:1177\n355#2:1181\n390#2,5:1188\n395#2,2:1207\n372#2,5:1217\n377#2,2:1228\n355#2:1231\n390#2,5:1238\n395#2,2:1249\n372#2,5:1259\n377#2,2:1270\n355#2:1273\n390#2,5:1280\n395#2,2:1291\n372#2,5:1301\n377#2,2:1312\n355#2:1315\n390#2,5:1322\n395#2,2:1333\n372#2,5:1343\n377#2,2:1354\n355#2:1357\n390#2,5:1364\n395#2,2:1375\n372#2,5:1385\n377#2,2:1396\n355#2:1399\n390#2,5:1406\n395#2,2:1417\n372#2,5:1428\n377#2,2:1439\n355#2:1443\n372#2,5:1453\n377#2,2:1464\n390#2,5:1474\n395#2,2:1485\n390#2,5:1497\n395#2,2:1508\n372#2,7:1511\n390#2,7:1518\n84#3:803\n26#4:804\n8#5:824\n8#5:847\n16#5:869\n16#5:892\n24#5:914\n24#5:937\n32#5:959\n40#5:981\n65#5,2:1001\n65#5,2:1023\n51#5,2:1044\n51#5,2:1066\n79#5,2:1087\n79#5,2:1109\n93#5,2:1130\n107#5,2:1151\n28#6:846\n68#6:891\n108#6:936\n38#6:1022\n78#6:1065\n118#6:1108\n15#7,2:1174\n282#7:1198\n283#7,3:1203\n1#8:1180\n69#9:1182\n69#9:1232\n69#9:1274\n69#9:1316\n69#9:1358\n69#9:1400\n74#9:1420\n74#9:1442\n74#9:1444\n69#9:1445\n74#9:1467\n69#9:1468\n69#9:1488\n69#9:1489\n74#9:1490\n74#9:1491\n17#10,4:1199\n*S KotlinDebug\n*F\n+ 1 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n*L\n49#1:807,7\n49#1:819,5\n49#1:825\n49#1:828\n61#1:829,7\n61#1:841,5\n61#1:848\n61#1:851\n73#1:852,7\n73#1:864,5\n73#1:870\n73#1:873\n85#1:874,7\n85#1:886,5\n85#1:893\n85#1:896\n97#1:897,7\n97#1:909,5\n97#1:915\n97#1:918\n109#1:919,7\n109#1:931,5\n109#1:938\n109#1:941\n121#1:942,7\n121#1:954,5\n121#1:960\n121#1:963\n133#1:964,7\n133#1:976,5\n133#1:982\n133#1:985\n145#1:986,5\n145#1:996,5\n145#1:1003\n145#1:1006\n158#1:1007,5\n158#1:1017,5\n158#1:1025\n158#1:1028\n170#1:1029,5\n170#1:1039,5\n170#1:1046\n170#1:1049\n182#1:1050,5\n182#1:1060,5\n182#1:1068\n182#1:1071\n194#1:1072,5\n194#1:1082,5\n194#1:1089\n194#1:1092\n206#1:1093,5\n206#1:1103,5\n206#1:1111\n206#1:1114\n219#1:1115,5\n219#1:1125,5\n219#1:1132\n219#1:1135\n235#1:1136,5\n235#1:1146,5\n235#1:1153\n235#1:1156\n250#1:1157,7\n250#1:1169,5\n250#1:1176\n250#1:1179\n324#1:1183,5\n324#1:1193,5\n324#1:1206\n324#1:1209\n349#1:1210,7\n349#1:1222,6\n349#1:1230\n415#1:1233,5\n415#1:1243,6\n415#1:1251\n436#1:1252,7\n436#1:1264,6\n436#1:1272\n494#1:1275,5\n494#1:1285,6\n494#1:1293\n515#1:1294,7\n515#1:1306,6\n515#1:1314\n577#1:1317,5\n577#1:1327,6\n577#1:1335\n598#1:1336,7\n598#1:1348,6\n598#1:1356\n636#1:1359,5\n636#1:1369,6\n636#1:1377\n647#1:1378,7\n647#1:1390,6\n647#1:1398\n685#1:1401,5\n685#1:1411,6\n685#1:1419\n699#1:1421,7\n699#1:1433,6\n699#1:1441\n717#1:1446,7\n717#1:1458,6\n717#1:1466\n732#1:1469,5\n732#1:1479,6\n732#1:1487\n752#1:1492,5\n752#1:1502,6\n752#1:1510\n14#1:798,5\n14#1:805,2\n49#1:814,5\n49#1:826,2\n61#1:836,5\n61#1:849,2\n73#1:859,5\n73#1:871,2\n85#1:881,5\n85#1:894,2\n97#1:904,5\n97#1:916,2\n109#1:926,5\n109#1:939,2\n121#1:949,5\n121#1:961,2\n133#1:971,5\n133#1:983,2\n145#1:991,5\n145#1:1004,2\n158#1:1012,5\n158#1:1026,2\n170#1:1034,5\n170#1:1047,2\n182#1:1055,5\n182#1:1069,2\n194#1:1077,5\n194#1:1090,2\n206#1:1098,5\n206#1:1112,2\n219#1:1120,5\n219#1:1133,2\n235#1:1141,5\n235#1:1154,2\n250#1:1164,5\n250#1:1177,2\n288#1:1181\n324#1:1188,5\n324#1:1207,2\n349#1:1217,5\n349#1:1228,2\n385#1:1231\n415#1:1238,5\n415#1:1249,2\n436#1:1259,5\n436#1:1270,2\n468#1:1273\n494#1:1280,5\n494#1:1291,2\n515#1:1301,5\n515#1:1312,2\n547#1:1315\n577#1:1322,5\n577#1:1333,2\n598#1:1343,5\n598#1:1354,2\n624#1:1357\n636#1:1364,5\n636#1:1375,2\n647#1:1385,5\n647#1:1396,2\n673#1:1399\n685#1:1406,5\n685#1:1417,2\n699#1:1428,5\n699#1:1439,2\n713#1:1443\n717#1:1453,5\n717#1:1464,2\n732#1:1474,5\n732#1:1485,2\n752#1:1497,5\n752#1:1508,2\n768#1:1511,7\n788#1:1518,7\n16#1:803\n16#1:804\n50#1:824\n62#1:847\n74#1:869\n86#1:892\n98#1:914\n110#1:937\n122#1:959\n134#1:981\n146#1:1001,2\n159#1:1023,2\n171#1:1044,2\n183#1:1066,2\n195#1:1087,2\n207#1:1109,2\n220#1:1130,2\n236#1:1151,2\n62#1:846\n86#1:891\n110#1:936\n159#1:1022\n183#1:1065\n207#1:1108\n251#1:1174,2\n325#1:1198\n325#1:1203,3\n289#1:1182\n386#1:1232\n469#1:1274\n548#1:1316\n625#1:1358\n674#1:1400\n697#1:1420\n695#1:1442\n715#1:1444\n715#1:1445\n712#1:1467\n730#1:1468\n745#1:1488\n746#1:1489\n748#1:1490\n749#1:1491\n325#1:1199,4\n*E\n"})
/* loaded from: classes8.dex */
public final class f {
    public static final int a(@NotNull a aVar, @NotNull a dst, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        if (i10 >= 0) {
            if (i10 <= dst.f() - dst.j()) {
                ByteBuffer g10 = aVar.g();
                int h10 = aVar.h();
                if (aVar.j() - h10 >= i10) {
                    fs.c.c(g10, dst.g(), h10, i10, dst.j());
                    dst.a(i10);
                    Unit unit = Unit.f60915a;
                    aVar.c(i10);
                    return i10;
                }
                throw new EOFException("Not enough bytes to read a buffer content of size " + i10 + '.');
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public static final void b(@NotNull a aVar, @NotNull byte[] destination, int i10, int i11) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        ByteBuffer g10 = aVar.g();
        int h10 = aVar.h();
        if (aVar.j() - h10 >= i11) {
            fs.d.b(g10, destination, h10, i11, i10);
            Unit unit = Unit.f60915a;
            aVar.c(i11);
            return;
        }
        throw new EOFException("Not enough bytes to read a byte array of size " + i11 + '.');
    }

    public static final void c(@NotNull a aVar, @NotNull a src, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(src, "src");
        if (i10 >= 0) {
            if (i10 <= src.j() - src.h()) {
                if (i10 <= aVar.f() - aVar.j()) {
                    ByteBuffer g10 = aVar.g();
                    int j10 = aVar.j();
                    int f10 = aVar.f() - j10;
                    if (f10 >= i10) {
                        fs.c.c(src.g(), g10, src.h(), i10, j10);
                        src.c(i10);
                        aVar.a(i10);
                        return;
                    }
                    throw new InsufficientSpaceException("buffer readable content", i10, f10);
                }
                throw new IllegalArgumentException(("length shouldn't be greater than the destination write remaining space: " + i10 + " > " + (aVar.f() - aVar.j())).toString());
            }
            throw new IllegalArgumentException(("length shouldn't be greater than the source read remaining: " + i10 + " > " + (src.j() - src.h())).toString());
        }
        throw new IllegalArgumentException(("length shouldn't be negative: " + i10).toString());
    }

    public static final void d(@NotNull a aVar, @NotNull byte[] source, int i10, int i11) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        ByteBuffer g10 = aVar.g();
        int j10 = aVar.j();
        int f10 = aVar.f() - j10;
        if (f10 >= i11) {
            ByteBuffer order = ByteBuffer.wrap(source, i10, i11).slice().order(ByteOrder.BIG_ENDIAN);
            Intrinsics.checkNotNullExpressionValue(order, "wrap(this, offset, lengt…der(ByteOrder.BIG_ENDIAN)");
            fs.c.c(fs.c.b(order), g10, 0, i11, j10);
            aVar.a(i11);
            return;
        }
        throw new InsufficientSpaceException("byte array", i11, f10);
    }
}
