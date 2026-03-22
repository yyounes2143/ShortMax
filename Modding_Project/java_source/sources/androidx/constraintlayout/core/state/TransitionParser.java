package androidx.constraintlayout.core.state;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLArray;
import androidx.constraintlayout.core.parser.CLContainer;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.state.Transition;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.ss.texturerender.TextureRenderKeys;
import java.lang.reflect.Array;
/* loaded from: classes.dex */
public class TransitionParser {
    private static int map(String str, String... strArr) {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (strArr[i10].equals(str)) {
                return i10;
            }
        }
        return 0;
    }

    @Deprecated
    public static void parse(CLObject cLObject, Transition transition, CorePixelDp corePixelDp) throws CLParsingException {
        parse(cLObject, transition);
    }

    private static void parseKeyAttribute(CLObject cLObject, Transition transition) throws CLParsingException {
        CLArray arrayOrNull;
        CustomVariable[][] customVariableArr;
        CustomVariable[] customVariableArr2;
        CLObject cLObject2;
        int i10;
        int i11;
        int i12 = 1;
        CLArray arrayOrNull2 = cLObject.getArrayOrNull(TypedValues.AttributesType.S_TARGET);
        if (arrayOrNull2 == null || (arrayOrNull = cLObject.getArrayOrNull(com.mbridge.msdk.foundation.entity.b.JSON_KEY_FRAME_ADS)) == null) {
            return;
        }
        String stringOrNull = cLObject.getStringOrNull("transitionEasing");
        String[] strArr = {"scaleX", "scaleY", "translationX", "translationY", "translationZ", "rotationX", "rotationY", "rotationZ", "alpha"};
        int[] iArr = {311, 312, 304, 305, 306, 308, 309, 310, 303};
        boolean[] zArr = {false, false, true, true, true, false, false, false, false};
        int size = arrayOrNull.size();
        TypedBundle[] typedBundleArr = new TypedBundle[size];
        for (int i13 = 0; i13 < arrayOrNull.size(); i13++) {
            typedBundleArr[i13] = new TypedBundle();
        }
        int i14 = 0;
        for (int i15 = 9; i14 < i15; i15 = 9) {
            String str = strArr[i14];
            int i16 = iArr[i14];
            boolean z10 = zArr[i14];
            CLArray arrayOrNull3 = cLObject.getArrayOrNull(str);
            if (arrayOrNull3 != null && arrayOrNull3.size() != size) {
                throw new CLParsingException("incorrect size for " + str + " array, not matching targets array!", cLObject);
            }
            if (arrayOrNull3 != null) {
                for (int i17 = 0; i17 < size; i17++) {
                    float f10 = arrayOrNull3.getFloat(i17);
                    if (z10) {
                        f10 = transition.mToPixel.toPixels(f10);
                    }
                    typedBundleArr[i17].add(i16, f10);
                    i12 = 1;
                }
            } else {
                float floatOrNaN = cLObject.getFloatOrNaN(str);
                if (!Float.isNaN(floatOrNaN)) {
                    if (z10) {
                        floatOrNaN = transition.mToPixel.toPixels(floatOrNaN);
                    }
                    for (int i18 = 0; i18 < size; i18++) {
                        typedBundleArr[i18].add(i16, floatOrNaN);
                    }
                }
                i12 = 1;
            }
            i14 += i12;
        }
        CLElement orNull = cLObject.getOrNull("custom");
        if (orNull != null && (orNull instanceof CLObject)) {
            CLObject cLObject3 = (CLObject) orNull;
            int size2 = cLObject3.size();
            customVariableArr = (CustomVariable[][]) Array.newInstance(CustomVariable.class, arrayOrNull.size(), size2);
            int i19 = 0;
            while (i19 < size2) {
                CLKey cLKey = (CLKey) cLObject3.get(i19);
                String content = cLKey.content();
                if (cLKey.getValue() instanceof CLArray) {
                    CLArray cLArray = (CLArray) cLKey.getValue();
                    int size3 = cLArray.size();
                    if (size3 == size && size3 > 0) {
                        if (cLArray.get(0) instanceof CLNumber) {
                            int i20 = 0;
                            while (i20 < size) {
                                customVariableArr[i20][i19] = new CustomVariable(content, 901, cLArray.get(i20).getFloat());
                                i20++;
                                cLObject3 = cLObject3;
                            }
                        } else {
                            cLObject2 = cLObject3;
                            int i21 = 0;
                            while (i21 < size) {
                                long parseColorString = ConstraintSetParser.parseColorString(cLArray.get(i21).content());
                                if (parseColorString != -1) {
                                    i11 = size2;
                                    customVariableArr[i21][i19] = new CustomVariable(content, 902, (int) parseColorString);
                                } else {
                                    i11 = size2;
                                }
                                i21++;
                                size2 = i11;
                            }
                            i10 = size2;
                        }
                    }
                    cLObject2 = cLObject3;
                    i10 = size2;
                } else {
                    cLObject2 = cLObject3;
                    i10 = size2;
                    CLElement value = cLKey.getValue();
                    if (value instanceof CLNumber) {
                        float f11 = value.getFloat();
                        for (int i22 = 0; i22 < size; i22++) {
                            customVariableArr[i22][i19] = new CustomVariable(content, 901, f11);
                        }
                    } else {
                        long parseColorString2 = ConstraintSetParser.parseColorString(value.content());
                        if (parseColorString2 != -1) {
                            int i23 = 0;
                            while (i23 < size) {
                                customVariableArr[i23][i19] = new CustomVariable(content, 902, (int) parseColorString2);
                                i23++;
                                parseColorString2 = parseColorString2;
                            }
                        }
                    }
                }
                i19++;
                cLObject3 = cLObject2;
                size2 = i10;
            }
        } else {
            customVariableArr = null;
        }
        String stringOrNull2 = cLObject.getStringOrNull("curveFit");
        for (int i24 = 0; i24 < arrayOrNull2.size(); i24++) {
            for (int i25 = 0; i25 < size; i25++) {
                String string = arrayOrNull2.getString(i24);
                TypedBundle typedBundle = typedBundleArr[i25];
                if (stringOrNull2 != null) {
                    typedBundle.add(508, map(stringOrNull2, "spline", "linear"));
                }
                typedBundle.addIfNotNull(501, stringOrNull);
                typedBundle.add(100, arrayOrNull.getInt(i25));
                if (customVariableArr != null) {
                    customVariableArr2 = customVariableArr[i25];
                } else {
                    customVariableArr2 = null;
                }
                transition.addKeyAttribute(string, typedBundle, customVariableArr2);
            }
        }
    }

    private static void parseKeyCycle(CLObject cLObject, Transition transition) throws CLParsingException {
        int[] iArr;
        int i10;
        CLArray array = cLObject.getArray(TypedValues.AttributesType.S_TARGET);
        CLArray array2 = cLObject.getArray(com.mbridge.msdk.foundation.entity.b.JSON_KEY_FRAME_ADS);
        String stringOrNull = cLObject.getStringOrNull("transitionEasing");
        String[] strArr = {"scaleX", "scaleY", "translationX", "translationY", "translationZ", "rotationX", "rotationY", "rotationZ", "alpha", TypedValues.CycleType.S_WAVE_PERIOD, TypedValues.CycleType.S_WAVE_OFFSET, TypedValues.CycleType.S_WAVE_PHASE};
        int[] iArr2 = {311, 312, 304, 305, 306, 308, 309, 310, 403, 423, 424, 425};
        int[] iArr3 = {0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 2, 0};
        int size = array2.size();
        TypedBundle[] typedBundleArr = new TypedBundle[size];
        for (int i11 = 0; i11 < size; i11++) {
            typedBundleArr[i11] = new TypedBundle();
        }
        boolean z10 = false;
        for (int i12 = 0; i12 < 12; i12++) {
            if (cLObject.has(strArr[i12]) && iArr3[i12] == 1) {
                z10 = true;
            }
        }
        int i13 = 0;
        for (int i14 = 12; i13 < i14; i14 = 12) {
            String str = strArr[i13];
            int i15 = iArr2[i13];
            int i16 = iArr3[i13];
            CLArray arrayOrNull = cLObject.getArrayOrNull(str);
            String[] strArr2 = strArr;
            if (arrayOrNull != null && arrayOrNull.size() != size) {
                throw new CLParsingException("incorrect size for $attrName array, not matching targets array!", cLObject);
            }
            if (arrayOrNull != null) {
                int i17 = 0;
                while (i17 < size) {
                    float f10 = arrayOrNull.getFloat(i17);
                    int[] iArr4 = iArr2;
                    if (i16 == 1) {
                        f10 = transition.mToPixel.toPixels(f10);
                    } else if (i16 == 2 && z10) {
                        f10 = transition.mToPixel.toPixels(f10);
                    }
                    typedBundleArr[i17].add(i15, f10);
                    i17++;
                    iArr2 = iArr4;
                }
                iArr = iArr2;
            } else {
                iArr = iArr2;
                float floatOrNaN = cLObject.getFloatOrNaN(str);
                if (!Float.isNaN(floatOrNaN)) {
                    if (i16 == 1) {
                        floatOrNaN = transition.mToPixel.toPixels(floatOrNaN);
                    } else if (i16 == 2 && z10) {
                        floatOrNaN = transition.mToPixel.toPixels(floatOrNaN);
                    }
                    for (int i18 = 0; i18 < size; i18++) {
                        typedBundleArr[i18].add(i15, floatOrNaN);
                    }
                } else {
                    i10 = 1;
                    i13 += i10;
                    strArr = strArr2;
                    iArr2 = iArr;
                }
            }
            i10 = 1;
            i13 += i10;
            strArr = strArr2;
            iArr2 = iArr;
        }
        String stringOrNull2 = cLObject.getStringOrNull("curveFit");
        String stringOrNull3 = cLObject.getStringOrNull("easing");
        String stringOrNull4 = cLObject.getStringOrNull("waveShape");
        String stringOrNull5 = cLObject.getStringOrNull(TypedValues.CycleType.S_CUSTOM_WAVE_SHAPE);
        for (int i19 = 0; i19 < array.size(); i19++) {
            for (int i20 = 0; i20 < size; i20++) {
                String string = array.getString(i19);
                TypedBundle typedBundle = typedBundleArr[i20];
                if (stringOrNull2 != null) {
                    if (!stringOrNull2.equals("linear")) {
                        if (stringOrNull2.equals("spline")) {
                            typedBundle.add(401, 0);
                        }
                    } else {
                        typedBundle.add(401, 1);
                    }
                }
                typedBundle.addIfNotNull(501, stringOrNull);
                if (stringOrNull3 != null) {
                    typedBundle.add(420, stringOrNull3);
                }
                if (stringOrNull4 != null) {
                    typedBundle.add(421, stringOrNull4);
                }
                if (stringOrNull5 != null) {
                    typedBundle.add(422, stringOrNull5);
                }
                typedBundle.add(100, array2.getInt(i20));
                transition.addKeyCycle(string, typedBundle);
            }
        }
    }

    public static void parseKeyFrames(CLObject cLObject, Transition transition) throws CLParsingException {
        CLObject objectOrNull = cLObject.getObjectOrNull("KeyFrames");
        if (objectOrNull == null) {
            return;
        }
        CLArray arrayOrNull = objectOrNull.getArrayOrNull("KeyPositions");
        if (arrayOrNull != null) {
            for (int i10 = 0; i10 < arrayOrNull.size(); i10++) {
                CLElement cLElement = arrayOrNull.get(i10);
                if (cLElement instanceof CLObject) {
                    parseKeyPosition((CLObject) cLElement, transition);
                }
            }
        }
        CLArray arrayOrNull2 = objectOrNull.getArrayOrNull(TypedValues.AttributesType.NAME);
        if (arrayOrNull2 != null) {
            for (int i11 = 0; i11 < arrayOrNull2.size(); i11++) {
                CLElement cLElement2 = arrayOrNull2.get(i11);
                if (cLElement2 instanceof CLObject) {
                    parseKeyAttribute((CLObject) cLElement2, transition);
                }
            }
        }
        CLArray arrayOrNull3 = objectOrNull.getArrayOrNull("KeyCycles");
        if (arrayOrNull3 != null) {
            for (int i12 = 0; i12 < arrayOrNull3.size(); i12++) {
                CLElement cLElement3 = arrayOrNull3.get(i12);
                if (cLElement3 instanceof CLObject) {
                    parseKeyCycle((CLObject) cLElement3, transition);
                }
            }
        }
    }

    private static void parseKeyPosition(CLObject cLObject, Transition transition) throws CLParsingException {
        TypedBundle typedBundle = new TypedBundle();
        CLArray array = cLObject.getArray(TypedValues.AttributesType.S_TARGET);
        CLArray array2 = cLObject.getArray(com.mbridge.msdk.foundation.entity.b.JSON_KEY_FRAME_ADS);
        CLArray arrayOrNull = cLObject.getArrayOrNull("percentX");
        CLArray arrayOrNull2 = cLObject.getArrayOrNull("percentY");
        CLArray arrayOrNull3 = cLObject.getArrayOrNull("percentWidth");
        CLArray arrayOrNull4 = cLObject.getArrayOrNull("percentHeight");
        String stringOrNull = cLObject.getStringOrNull(TypedValues.TransitionType.S_PATH_MOTION_ARC);
        String stringOrNull2 = cLObject.getStringOrNull("transitionEasing");
        String stringOrNull3 = cLObject.getStringOrNull("curveFit");
        String stringOrNull4 = cLObject.getStringOrNull("type");
        if (stringOrNull4 == null) {
            stringOrNull4 = "parentRelative";
        }
        if (arrayOrNull != null && array2.size() != arrayOrNull.size()) {
            return;
        }
        if (arrayOrNull2 != null && array2.size() != arrayOrNull2.size()) {
            return;
        }
        int i10 = 0;
        while (i10 < array.size()) {
            String string = array.getString(i10);
            int map = map(stringOrNull4, "deltaRelative", "pathRelative", "parentRelative");
            typedBundle.clear();
            typedBundle.add(510, map);
            if (stringOrNull3 != null) {
                map(typedBundle, 508, stringOrNull3, "spline", "linear");
            }
            typedBundle.addIfNotNull(501, stringOrNull2);
            if (stringOrNull != null) {
                map(typedBundle, 509, stringOrNull, DevicePublicKeyStringDef.NONE, "startVertical", "startHorizontal", "flip", "below", "above");
            }
            int i11 = 0;
            while (i11 < array2.size()) {
                typedBundle.add(100, array2.getInt(i11));
                set(typedBundle, 506, arrayOrNull, i11);
                set(typedBundle, 507, arrayOrNull2, i11);
                set(typedBundle, 503, arrayOrNull3, i11);
                set(typedBundle, 504, arrayOrNull4, i11);
                transition.addKeyPosition(string, typedBundle);
                i11++;
                stringOrNull4 = stringOrNull4;
            }
            i10++;
            stringOrNull4 = stringOrNull4;
        }
    }

    private static void parseOnSwipe(CLContainer cLContainer, Transition transition) {
        String stringOrNull = cLContainer.getStringOrNull("anchor");
        int map = map(cLContainer.getStringOrNull("side"), Transition.OnSwipe.SIDES);
        int map2 = map(cLContainer.getStringOrNull(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION), Transition.OnSwipe.DIRECTIONS);
        float floatOrNaN = cLContainer.getFloatOrNaN(TextureRenderKeys.KEY_IS_SCALE);
        float floatOrNaN2 = cLContainer.getFloatOrNaN("threshold");
        float floatOrNaN3 = cLContainer.getFloatOrNaN("maxVelocity");
        float floatOrNaN4 = cLContainer.getFloatOrNaN("maxAccel");
        String stringOrNull2 = cLContainer.getStringOrNull("limitBounds");
        int map3 = map(cLContainer.getStringOrNull("mode"), Transition.OnSwipe.MODE);
        int map4 = map(cLContainer.getStringOrNull("touchUp"), Transition.OnSwipe.TOUCH_UP);
        float floatOrNaN5 = cLContainer.getFloatOrNaN("springMass");
        float floatOrNaN6 = cLContainer.getFloatOrNaN("springStiffness");
        float floatOrNaN7 = cLContainer.getFloatOrNaN("springDamping");
        float floatOrNaN8 = cLContainer.getFloatOrNaN("stopThreshold");
        int map5 = map(cLContainer.getStringOrNull("springBoundary"), Transition.OnSwipe.BOUNDARY);
        String stringOrNull3 = cLContainer.getStringOrNull("around");
        Transition.OnSwipe createOnSwipe = transition.createOnSwipe();
        createOnSwipe.setAnchorId(stringOrNull);
        createOnSwipe.setAnchorSide(map);
        createOnSwipe.setDragDirection(map2);
        createOnSwipe.setDragScale(floatOrNaN);
        createOnSwipe.setDragThreshold(floatOrNaN2);
        createOnSwipe.setMaxVelocity(floatOrNaN3);
        createOnSwipe.setMaxAcceleration(floatOrNaN4);
        createOnSwipe.setLimitBoundsTo(stringOrNull2);
        createOnSwipe.setAutoCompleteMode(map3);
        createOnSwipe.setOnTouchUp(map4);
        createOnSwipe.setSpringMass(floatOrNaN5);
        createOnSwipe.setSpringStiffness(floatOrNaN6);
        createOnSwipe.setSpringDamping(floatOrNaN7);
        createOnSwipe.setSpringStopThreshold(floatOrNaN8);
        createOnSwipe.setSpringBoundary(map5);
        createOnSwipe.setRotationCenterId(stringOrNull3);
    }

    private static void set(TypedBundle typedBundle, int i10, CLArray cLArray, int i11) throws CLParsingException {
        if (cLArray != null) {
            typedBundle.add(i10, cLArray.getFloat(i11));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void parse(@NonNull CLObject cLObject, @NonNull Transition transition) throws CLParsingException {
        transition.resetProperties();
        String stringOrNull = cLObject.getStringOrNull(TypedValues.TransitionType.S_PATH_MOTION_ARC);
        TypedBundle typedBundle = new TypedBundle();
        boolean z10 = true;
        boolean z11 = false;
        if (stringOrNull != null) {
            char c10 = 65535;
            switch (stringOrNull.hashCode()) {
                case -1857024520:
                    if (stringOrNull.equals("startVertical")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1007052250:
                    if (stringOrNull.equals("startHorizontal")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3145837:
                    if (stringOrNull.equals("flip")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3387192:
                    if (stringOrNull.equals(DevicePublicKeyStringDef.NONE)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 92611485:
                    if (stringOrNull.equals("above")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 93621297:
                    if (stringOrNull.equals("below")) {
                        c10 = 5;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    typedBundle.add(509, 1);
                    break;
                case 1:
                    typedBundle.add(509, 2);
                    break;
                case 2:
                    typedBundle.add(509, 3);
                    break;
                case 3:
                    typedBundle.add(509, 0);
                    break;
                case 4:
                    typedBundle.add(509, 5);
                    break;
                case 5:
                    typedBundle.add(509, 4);
                    break;
            }
            z11 = true;
        }
        String stringOrNull2 = cLObject.getStringOrNull("interpolator");
        if (stringOrNull2 != null) {
            typedBundle.add(705, stringOrNull2);
            z11 = true;
        }
        float floatOrNaN = cLObject.getFloatOrNaN(TypedValues.TransitionType.S_STAGGERED);
        if (Float.isNaN(floatOrNaN)) {
            z10 = z11;
        } else {
            typedBundle.add(706, floatOrNaN);
        }
        if (z10) {
            transition.setTransitionProperties(typedBundle);
        }
        CLObject objectOrNull = cLObject.getObjectOrNull("onSwipe");
        if (objectOrNull != null) {
            parseOnSwipe(objectOrNull, transition);
        }
        parseKeyFrames(cLObject, transition);
    }

    private static void map(TypedBundle typedBundle, int i10, String str, String... strArr) {
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (strArr[i11].equals(str)) {
                typedBundle.add(i10, i11);
            }
        }
    }
}
