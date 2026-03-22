package c1;

import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MaskParser.java */
/* loaded from: classes2.dex */
public class x {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Mask a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        boolean z10;
        boolean z11;
        jsonReader.k();
        Mask.MaskMode maskMode = null;
        y0.h hVar = null;
        y0.d dVar = null;
        boolean z12 = false;
        while (jsonReader.o()) {
            String s10 = jsonReader.s();
            s10.hashCode();
            switch (s10.hashCode()) {
                case 111:
                    if (s10.equals("o")) {
                        z10 = false;
                        break;
                    }
                    z10 = true;
                    break;
                case 3588:
                    if (s10.equals("pt")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                case 104433:
                    if (s10.equals("inv")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                case 3357091:
                    if (s10.equals("mode")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                default:
                    z10 = true;
                    break;
            }
            switch (z10) {
                case false:
                    dVar = d.h(jsonReader, iVar);
                    break;
                case true:
                    hVar = d.k(jsonReader, iVar);
                    break;
                case true:
                    z12 = jsonReader.p();
                    break;
                case true:
                    String t10 = jsonReader.t();
                    t10.hashCode();
                    switch (t10.hashCode()) {
                        case 97:
                            if (t10.equals("a")) {
                                z11 = false;
                                break;
                            }
                            z11 = true;
                            break;
                        case 105:
                            if (t10.equals("i")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        case 110:
                            if (t10.equals("n")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        case 115:
                            if (t10.equals("s")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        default:
                            z11 = true;
                            break;
                    }
                    switch (z11) {
                        case false:
                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                            continue;
                        case true:
                            iVar.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            maskMode = Mask.MaskMode.MASK_MODE_INTERSECT;
                            continue;
                        case true:
                            maskMode = Mask.MaskMode.MASK_MODE_NONE;
                            continue;
                        case true:
                            maskMode = Mask.MaskMode.MASK_MODE_SUBTRACT;
                            continue;
                        default:
                            d1.f.c("Unknown mask mode " + s10 + ". Defaulting to Add.");
                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                            continue;
                    }
                default:
                    jsonReader.P();
                    break;
            }
        }
        jsonReader.m();
        return new Mask(maskMode, hVar, dVar, z12);
    }
}
