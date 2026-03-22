package androidx.compose.runtime.tooling;

import androidx.compose.runtime.internal.Utils_androidKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SourceInformation.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSourceInformation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceInformation.kt\nandroidx/compose/runtime/tooling/SourceInformationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,354:1\n1#2:355\n91#3:356\n34#3,5:357\n92#3:362\n91#3:363\n34#3,5:364\n92#3:369\n*S KotlinDebug\n*F\n+ 1 SourceInformation.kt\nandroidx/compose/runtime/tooling/SourceInformationKt\n*L\n239#1:356\n239#1:357,5\n239#1:362\n261#1:363\n261#1:364,5\n261#1:369\n*E\n"})
/* loaded from: classes.dex */
public final class SourceInformationKt {
    private static final boolean hasSection(SourceInfoParserState sourceInfoParserState) {
        if (sourceInfoParserState.getI() < sourceInfoParserState.getData().length() - 1 && Character.isLetter(sourceInfoParserState.getData().charAt(sourceInfoParserState.getI())) && sourceInfoParserState.getData().charAt(sourceInfoParserState.getI() + 1) == '(') {
            return true;
        }
        return false;
    }

    private static final List<LocationSourceInformation> parseLocations(SourceInfoParserState sourceInfoParserState) {
        boolean z10;
        Integer num;
        Integer num2;
        int i10;
        ArrayList arrayList = new ArrayList();
        while (!sourceInfoParserState.atEnd() && !sourceInfoParserState.matches(':')) {
            if (sourceInfoParserState.matches('*')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                z10 = true;
            } else {
                z10 = false;
            }
            if (!sourceInfoParserState.matches('@')) {
                num = Integer.valueOf(sourceInfoParserState.takeIntUntil("@") + 1);
            } else {
                num = null;
            }
            SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            int takeIntUntil = sourceInfoParserState.takeIntUntil("L,:");
            if (sourceInfoParserState.matches('L')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                num2 = Integer.valueOf(sourceInfoParserState.takeIntUntil(",:"));
            } else {
                num2 = null;
            }
            int i11 = -1;
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = -1;
            }
            if (num2 != null) {
                i11 = num2.intValue();
            }
            arrayList.add(new LocationSourceInformation(i10, takeIntUntil, i11, z10));
            if (sourceInfoParserState.matches(',')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            }
        }
        SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
        return arrayList;
    }

    private static final List<ParameterSourceInformation> parseParameterIndex(SourceInfoParserState sourceInfoParserState) {
        String str;
        sourceInfoParserState.advance(2);
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        while (!sourceInfoParserState.atEnd() && !sourceInfoParserState.matches(')')) {
            if (sourceInfoParserState.matches('!')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                String takeUntil = sourceInfoParserState.takeUntil("!,)");
                if (takeUntil.length() == 0) {
                    z10 = true;
                } else {
                    int parseInt = Integer.parseInt(takeUntil);
                    int i10 = 0;
                    while (parseInt > 0) {
                        int size = arrayList.size();
                        int i11 = 0;
                        while (true) {
                            if (i11 < size) {
                                if (((ParameterSourceInformation) arrayList.get(i11)).getSortedIndex() == i10) {
                                    i10++;
                                    break;
                                }
                                i11++;
                            } else {
                                arrayList.add(new ParameterSourceInformation(i10, null, null, 6, null));
                                parseInt--;
                                break;
                            }
                        }
                    }
                }
            } else {
                int takeIntUntil = sourceInfoParserState.takeIntUntil("!:,)");
                if (sourceInfoParserState.matches(':')) {
                    SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                    str = replaceComposePrefix(sourceInfoParserState.takeUntil("!,)"));
                } else {
                    str = null;
                }
                if (z10) {
                    int i12 = 0;
                    while (i12 < takeIntUntil) {
                        int size2 = arrayList.size();
                        int i13 = 0;
                        while (true) {
                            if (i13 < size2) {
                                if (((ParameterSourceInformation) arrayList.get(i13)).getSortedIndex() == i12) {
                                    i12++;
                                    break;
                                }
                                i13++;
                            } else {
                                arrayList.add(new ParameterSourceInformation(i12, null, null, 6, null));
                                break;
                            }
                        }
                    }
                    z10 = false;
                }
                arrayList.add(new ParameterSourceInformation(takeIntUntil, null, str, 2, null));
            }
            if (sourceInfoParserState.matches(',')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            }
        }
        sourceInfoParserState.expect(')');
        SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
        return arrayList;
    }

    private static final List<ParameterSourceInformation> parseParameterNames(SourceInfoParserState sourceInfoParserState) {
        String str;
        sourceInfoParserState.advance(2);
        ArrayList arrayList = new ArrayList();
        while (!sourceInfoParserState.atEnd() && !sourceInfoParserState.matches(')')) {
            String takeUntil = sourceInfoParserState.takeUntil(":,)");
            if (sourceInfoParserState.matches(':')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                str = replaceComposePrefix(sourceInfoParserState.takeUntil(",)"));
            } else {
                str = null;
            }
            arrayList.add(new ParameterSourceInformation(arrayList.size(), takeUntil, str));
            if (sourceInfoParserState.matches(',')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            }
        }
        sourceInfoParserState.expect(')');
        SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
        return arrayList;
    }

    @ComposeToolingApi
    @Nullable
    public static final SourceInformation parseSourceInformation(@NotNull String str) {
        if (str.length() == 0) {
            return null;
        }
        try {
            return parseSourceInformationInternal(str);
        } catch (ParseException e10) {
            Utils_androidKt.logError(e10.getMessage(), e10);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cc  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.runtime.tooling.SourceInformation parseSourceInformationInternal(@org.jetbrains.annotations.NotNull java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.tooling.SourceInformationKt.parseSourceInformationInternal(java.lang.String):androidx.compose.runtime.tooling.SourceInformation");
    }

    private static final String replaceComposePrefix(String str) {
        return StringsKt.R(str, "c#", "androidx.compose.", false, 4, null);
    }
}
