package kotlin.text;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringNumberConversionsJVM.kt */
@Metadata
/* loaded from: classes8.dex */
final class l {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l f61233a = new l();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Regex f61234b;

    static {
        String str = "[eE][+-]?(\\p{Digit}+)";
        f61234b = new Regex("[\\x00-\\x20]*[+-]?(NaN|Infinity|((" + ("((\\p{Digit}+)(\\.)?((\\p{Digit}+)?)(" + str + ")?)|(\\.((\\p{Digit}+))(" + str + ")?)|((" + ("(0[xX](\\p{XDigit}+)(\\.)?)|(0[xX](\\p{XDigit}+)?(\\.)(\\p{XDigit}+))") + ")[pP][+-]?(\\p{Digit}+))") + ")[fFdD]?))[\\x00-\\x20]*");
    }

    private l() {
    }
}
