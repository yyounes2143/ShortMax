package hs;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Output.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,576:1\n527#1,4:577\n488#1,4:581\n531#1:585\n532#1,4:587\n492#1,6:591\n537#1:597\n565#1,4:598\n507#1,6:602\n569#1:608\n570#1,4:610\n513#1,7:614\n575#1:621\n565#1,4:622\n507#1,6:626\n569#1:632\n570#1,4:634\n513#1,7:638\n575#1:645\n565#1,4:646\n507#1,6:650\n569#1:656\n570#1,4:658\n513#1,7:662\n575#1:669\n565#1,4:670\n507#1,6:674\n569#1:680\n570#1,4:682\n513#1,7:686\n575#1:693\n565#1,4:694\n507#1,6:698\n569#1:704\n570#1,4:706\n513#1,7:710\n575#1:717\n527#1,4:718\n488#1,4:722\n531#1:726\n532#1,4:728\n492#1,6:732\n537#1:738\n545#1,4:740\n488#1,4:744\n549#1:748\n550#1,5:750\n492#1,6:755\n556#1:761\n488#1,4:762\n492#1,6:767\n488#1,4:773\n492#1,6:778\n488#1,4:784\n492#1,6:789\n507#1,6:795\n513#1,7:802\n74#2:586\n74#2:609\n74#2:633\n74#2:657\n74#2:681\n74#2:705\n74#2:727\n69#2:739\n74#2:749\n74#2:766\n74#2:777\n74#2:788\n74#2:801\n*S KotlinDebug\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/OutputKt\n*L\n411#1:577,4\n411#1:581,4\n411#1:585\n411#1:587,4\n411#1:591,6\n411#1:597\n418#1:598,4\n418#1:602,6\n418#1:608\n418#1:610,4\n418#1:614,7\n418#1:621\n425#1:622,4\n425#1:626,6\n425#1:632\n425#1:634,4\n425#1:638,7\n425#1:645\n432#1:646,4\n432#1:650,6\n432#1:656\n432#1:658,4\n432#1:662,7\n432#1:669\n439#1:670,4\n439#1:674,6\n439#1:680\n439#1:682,4\n439#1:686,7\n439#1:693\n446#1:694,4\n446#1:698,6\n446#1:704\n446#1:706,4\n446#1:710,7\n446#1:717\n453#1:718,4\n453#1:722,4\n453#1:726\n453#1:728,4\n453#1:732,6\n453#1:738\n465#1:740,4\n465#1:744,4\n465#1:748\n465#1:750,5\n465#1:755,6\n465#1:761\n473#1:762,4\n473#1:767,6\n530#1:773,4\n530#1:778,6\n548#1:784,4\n548#1:789,6\n568#1:795,6\n568#1:802,7\n411#1:586\n418#1:609\n425#1:633\n432#1:657\n439#1:681\n446#1:705\n453#1:727\n452#1:739\n465#1:749\n474#1:766\n531#1:777\n549#1:788\n569#1:801\n*E\n"})
/* loaded from: classes8.dex */
public final class o {
    public static final void a(@NotNull n nVar, @NotNull a src, int i10) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        Intrinsics.checkNotNullParameter(src, "src");
        is.a d10 = is.f.d(nVar, 1, null);
        while (true) {
            try {
                int min = Math.min(i10, d10.f() - d10.j());
                f.c(d10, src, min);
                i10 -= min;
                if (i10 > 0) {
                    d10 = is.f.d(nVar, 1, d10);
                } else {
                    return;
                }
            } finally {
                nVar.k();
            }
        }
    }

    public static final void b(@NotNull n nVar, @NotNull byte[] src, int i10, int i11) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        Intrinsics.checkNotNullParameter(src, "src");
        is.a d10 = is.f.d(nVar, 1, null);
        while (true) {
            try {
                int min = Math.min(i11, d10.f() - d10.j());
                f.d(d10, src, i10, min);
                i10 += min;
                i11 -= min;
                if (i11 > 0) {
                    d10 = is.f.d(nVar, 1, d10);
                } else {
                    return;
                }
            } finally {
                nVar.k();
            }
        }
    }

    public static /* synthetic */ void c(n nVar, a aVar, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = aVar.j() - aVar.h();
        }
        a(nVar, aVar, i10);
    }
}
