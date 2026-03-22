package androidx.compose.foundation.text;

import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KeyMapping.kt */
@Metadata
/* loaded from: classes.dex */
public final class KeyMappingKt {
    @NotNull
    private static final KeyMapping defaultKeyMapping;

    static {
        final KeyMapping commonKeyMapping = commonKeyMapping(new PropertyReference1Impl() { // from class: androidx.compose.foundation.text.KeyMappingKt$defaultKeyMapping$1
            @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
            @Nullable
            public Object get(@Nullable Object obj) {
                return Boolean.valueOf(KeyEvent_androidKt.m3080isCtrlPressedZmokQxo(((KeyEvent) obj).m3065unboximpl()));
            }
        });
        defaultKeyMapping = new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt$defaultKeyMapping$2$1
            @Override // androidx.compose.foundation.text.KeyMapping
            @Nullable
            /* renamed from: map-ZmokQxo */
            public KeyCommand mo723mapZmokQxo(@NotNull android.view.KeyEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                KeyCommand keyCommand = null;
                if (KeyEvent_androidKt.m3082isShiftPressedZmokQxo(event) && KeyEvent_androidKt.m3080isCtrlPressedZmokQxo(event)) {
                    long m3076getKeyZmokQxo = KeyEvent_androidKt.m3076getKeyZmokQxo(event);
                    MappedKeys mappedKeys = MappedKeys.INSTANCE;
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m742getDirectionLeftEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_LEFT_WORD;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m743getDirectionRightEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_RIGHT_WORD;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m744getDirectionUpEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_PREV_PARAGRAPH;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m741getDirectionDownEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_NEXT_PARAGRAPH;
                    }
                } else if (KeyEvent_androidKt.m3080isCtrlPressedZmokQxo(event)) {
                    long m3076getKeyZmokQxo2 = KeyEvent_androidKt.m3076getKeyZmokQxo(event);
                    MappedKeys mappedKeys2 = MappedKeys.INSTANCE;
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m742getDirectionLeftEK5gGoQ())) {
                        keyCommand = KeyCommand.LEFT_WORD;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m743getDirectionRightEK5gGoQ())) {
                        keyCommand = KeyCommand.RIGHT_WORD;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m744getDirectionUpEK5gGoQ())) {
                        keyCommand = KeyCommand.PREV_PARAGRAPH;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m741getDirectionDownEK5gGoQ())) {
                        keyCommand = KeyCommand.NEXT_PARAGRAPH;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m746getHEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_PREV_CHAR;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m740getDeleteEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_NEXT_WORD;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m737getBackspaceEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_PREV_WORD;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m736getBackslashEK5gGoQ())) {
                        keyCommand = KeyCommand.DESELECT;
                    }
                } else if (KeyEvent_androidKt.m3082isShiftPressedZmokQxo(event)) {
                    long m3076getKeyZmokQxo3 = KeyEvent_androidKt.m3076getKeyZmokQxo(event);
                    MappedKeys mappedKeys3 = MappedKeys.INSTANCE;
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m749getMoveHomeEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_HOME;
                    } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m748getMoveEndEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_END;
                    }
                }
                if (keyCommand == null) {
                    return KeyMapping.this.mo723mapZmokQxo(event);
                }
                return keyCommand;
            }
        };
    }

    @NotNull
    public static final KeyMapping commonKeyMapping(@NotNull final Function1<? super KeyEvent, Boolean> shortcutModifier) {
        Intrinsics.checkNotNullParameter(shortcutModifier, "shortcutModifier");
        return new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt$commonKeyMapping$1
            @Override // androidx.compose.foundation.text.KeyMapping
            @Nullable
            /* renamed from: map-ZmokQxo */
            public KeyCommand mo723mapZmokQxo(@NotNull android.view.KeyEvent event) {
                boolean m2481equalsimpl0;
                Intrinsics.checkNotNullParameter(event, "event");
                if (shortcutModifier.invoke(KeyEvent.m3059boximpl(event)).booleanValue() && KeyEvent_androidKt.m3082isShiftPressedZmokQxo(event)) {
                    if (!Key.m2481equalsimpl0(KeyEvent_androidKt.m3076getKeyZmokQxo(event), MappedKeys.INSTANCE.m756getZEK5gGoQ())) {
                        return null;
                    }
                    return KeyCommand.REDO;
                } else if (shortcutModifier.invoke(KeyEvent.m3059boximpl(event)).booleanValue()) {
                    long m3076getKeyZmokQxo = KeyEvent_androidKt.m3076getKeyZmokQxo(event);
                    MappedKeys mappedKeys = MappedKeys.INSTANCE;
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m738getCEK5gGoQ())) {
                        m2481equalsimpl0 = true;
                    } else {
                        m2481equalsimpl0 = Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m747getInsertEK5gGoQ());
                    }
                    if (m2481equalsimpl0) {
                        return KeyCommand.COPY;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m754getVEK5gGoQ())) {
                        return KeyCommand.PASTE;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m755getXEK5gGoQ())) {
                        return KeyCommand.CUT;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m735getAEK5gGoQ())) {
                        return KeyCommand.SELECT_ALL;
                    }
                    if (!Key.m2481equalsimpl0(m3076getKeyZmokQxo, mappedKeys.m756getZEK5gGoQ())) {
                        return null;
                    }
                    return KeyCommand.UNDO;
                } else if (KeyEvent_androidKt.m3080isCtrlPressedZmokQxo(event)) {
                    return null;
                } else {
                    if (KeyEvent_androidKt.m3082isShiftPressedZmokQxo(event)) {
                        long m3076getKeyZmokQxo2 = KeyEvent_androidKt.m3076getKeyZmokQxo(event);
                        MappedKeys mappedKeys2 = MappedKeys.INSTANCE;
                        if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m742getDirectionLeftEK5gGoQ())) {
                            return KeyCommand.SELECT_LEFT_CHAR;
                        }
                        if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m743getDirectionRightEK5gGoQ())) {
                            return KeyCommand.SELECT_RIGHT_CHAR;
                        }
                        if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m744getDirectionUpEK5gGoQ())) {
                            return KeyCommand.SELECT_UP;
                        }
                        if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m741getDirectionDownEK5gGoQ())) {
                            return KeyCommand.SELECT_DOWN;
                        }
                        if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m751getPageUpEK5gGoQ())) {
                            return KeyCommand.SELECT_PAGE_UP;
                        }
                        if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m750getPageDownEK5gGoQ())) {
                            return KeyCommand.SELECT_PAGE_DOWN;
                        }
                        if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m749getMoveHomeEK5gGoQ())) {
                            return KeyCommand.SELECT_LINE_START;
                        }
                        if (Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m748getMoveEndEK5gGoQ())) {
                            return KeyCommand.SELECT_LINE_END;
                        }
                        if (!Key.m2481equalsimpl0(m3076getKeyZmokQxo2, mappedKeys2.m747getInsertEK5gGoQ())) {
                            return null;
                        }
                        return KeyCommand.PASTE;
                    }
                    long m3076getKeyZmokQxo3 = KeyEvent_androidKt.m3076getKeyZmokQxo(event);
                    MappedKeys mappedKeys3 = MappedKeys.INSTANCE;
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m742getDirectionLeftEK5gGoQ())) {
                        return KeyCommand.LEFT_CHAR;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m743getDirectionRightEK5gGoQ())) {
                        return KeyCommand.RIGHT_CHAR;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m744getDirectionUpEK5gGoQ())) {
                        return KeyCommand.UP;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m741getDirectionDownEK5gGoQ())) {
                        return KeyCommand.DOWN;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m751getPageUpEK5gGoQ())) {
                        return KeyCommand.PAGE_UP;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m750getPageDownEK5gGoQ())) {
                        return KeyCommand.PAGE_DOWN;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m749getMoveHomeEK5gGoQ())) {
                        return KeyCommand.LINE_START;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m748getMoveEndEK5gGoQ())) {
                        return KeyCommand.LINE_END;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m745getEnterEK5gGoQ())) {
                        return KeyCommand.NEW_LINE;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m737getBackspaceEK5gGoQ())) {
                        return KeyCommand.DELETE_PREV_CHAR;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m740getDeleteEK5gGoQ())) {
                        return KeyCommand.DELETE_NEXT_CHAR;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m752getPasteEK5gGoQ())) {
                        return KeyCommand.PASTE;
                    }
                    if (Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m739getCutEK5gGoQ())) {
                        return KeyCommand.CUT;
                    }
                    if (!Key.m2481equalsimpl0(m3076getKeyZmokQxo3, mappedKeys3.m753getTabEK5gGoQ())) {
                        return null;
                    }
                    return KeyCommand.TAB;
                }
            }
        };
    }

    @NotNull
    public static final KeyMapping getDefaultKeyMapping() {
        return defaultKeyMapping;
    }
}
